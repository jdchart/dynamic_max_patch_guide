outlets = 0;
setinletassist(0, 'Ctrl In');

function bang(){
    create_obj(200, 200, 'button');
    create_obj(200, 150, 't', ['b', 1]);
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
}

function create_obj(x, y, object, args){
    obj = this.patcher.newdefault(x, y, object, args);
    obj.varname = 'jscreated';

    return obj;
}