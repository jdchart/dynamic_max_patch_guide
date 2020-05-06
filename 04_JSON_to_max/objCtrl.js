outlets = 0;
setinletassist(0, 'Ctrl In');

function load_json(file){
    f = new File(file, 'read');
    f.open();
    json_string = '';
    while(f.eof > f.position){
        line = f.readline();
        json_string = json_string + line;
    }
    f.close();

    return JSON.parse(json_string);
}

json_data = load_json('data.json');

function load_patch(x){
    reset();

    if(x == 0){
        patch_key = "state_01";
    } else if(x == 1){
        patch_key = "state_02";
    } else if(x == 2){
        patch_key = "state_03";
    }

    name_comment = this.patcher.getnamed('patch_name');
    desc_comment = this.patcher.getnamed('patch_description');
    name_comment.message('set', json_data[patch_key]["name"]);
    desc_comment.message('set', json_data[patch_key]["description"]);

    object_list     = json_data[patch_key]["objects"];
    connection_list = json_data[patch_key]["connections"];

    created_object_list = [];

    for(i = 0; i < object_list.length; i++){

        args_list = object_list[i]["args"];
        init_list = object_list[i]["init"];

        obj = create_obj(object_list[i]["pos"][0], 
                        object_list[i]["pos"][1], 
                        object_list[i]["name"], 
                        args_list);  
        
        for(j = 0; j < init_list.length; j++){
            obj.message(init_list[j]);
        }
        
        created_object_list.push(obj);
    }

    for(i = 0; i < connection_list.length; i++){
        this.patcher.connect(created_object_list[connection_list[i][0]],
                                connection_list[i][1],
                                created_object_list[connection_list[i][2]],
                                connection_list[i][3])
    }

    for(i = 0; i < json_data[patch_key]["init"].length; i++){
        created_object_list[json_data[patch_key]["init"][i][0]].message(json_data[patch_key]["init"][i][1]);
    }
}

function reset(){
    to_delete = [];
    obj = this.patcher.firstobject;

    for(i = 0; i < this.patcher.count; i++){
        if(obj.varname.indexOf('jscreated') > -1){
            to_delete.push(obj);
        }

        obj = obj.nextobject;
    }

    for(i = 0; i < to_delete.length; i++){
        this.patcher.remove(to_delete[i]);
    }

    name_comment = this.patcher.getnamed('patch_name');
    desc_comment = this.patcher.getnamed('patch_description');

    name_comment.message('set', "Patch title...");
    desc_comment.message('set', "Patch description...");
}

function create_obj(x, y, object, args){
    obj = this.patcher.newdefault(x, y, object, args);
    obj.varname = 'jscreated';

    return obj;
}