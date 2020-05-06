outlets = 0;
setinletassist(0, 'Ctrl In');

main_object_location = [326, 120];
hidden_object_location = [457, 24];
attriui_locations = [23, 47];
spacing = 25;
attribute_list = [];


function set_object(obj_name){
    reset();
    attribute_list = [];

    created_obj = create_obj(main_object_location[0], 
                            main_object_location[1], 
                            obj_name);
    created_obj.varname = 'jscreated_main_object';

    create_hidden_objects();

    trigger_object = this.patcher.getnamed('jscreated_trigger');
    trigger_object.message('bang');
}

function create_attrui(){
    main_obj = this.patcher.getnamed('jscreated_main_object');
    panel_obj = this.patcher.getnamed('attribute_panel');
    last_object_height = 0;

    for(i = 0; i < attribute_list.length; i++){
        attrui_obj = create_obj(attriui_locations[0],
                                attriui_locations[1] + (i * spacing),
                                'attrui');

        this.patcher.hiddenconnect(attrui_obj, 0, main_obj, 0);
        
        attrui_obj.message('attr', attribute_list[i]);
        attrui_obj.message('patching_rect', attriui_locations[0], 
                                            attriui_locations[1] + (i * spacing), 
                                            panel_obj.rect[2] - panel_obj.rect[0], 22);

        last_object_height = attrui_obj.rect[3] ;
    }

    panel_obj.message('patching_rect', panel_obj.rect[0], 
                                        panel_obj.rect[1], 
                                        panel_obj.rect[2] - panel_obj.rect[0], 
                                        last_object_height);

}

function add_attribute(attribute){
    attribute_list.push(attribute);
}

function post_attribute_list(){
    for(i = 0; i < attribute_list.length; i ++){
        post(attribute_list[i] + '\n');
    }
}

function create_hidden_objects(){
    
    trigger_obj = create_obj(hidden_object_location[0],
                                hidden_object_location[1],
                                't', ['create_attrui', 'getattrlist']);
        trigger_obj.varname = 'jscreated_trigger';
        trigger_obj.hidden = true;

    first_get_attr = create_obj(hidden_object_location[0],
            hidden_object_location[1] + (spacing * 1),
            'getattr', ['@listen', 0]);
    first_get_attr.varname = 'jscreated_get_attr';
    first_get_attr.hidden = true;

    route_obj = create_obj(hidden_object_location[0],
        hidden_object_location[1] + (spacing * 2),
        'route', ['attrlist']);
    route_obj.varname = 'jscreated_route';
    route_obj.hidden = true;

    iter_obj = create_obj(hidden_object_location[0],
        hidden_object_location[1] + (spacing * 3),
        'iter');
    iter_obj.varname = 'jscreated_iter';
    iter_obj.hidden = true;

    prepend_obj = create_obj(hidden_object_location[0],
            hidden_object_location[1] + (spacing * 4),
            'prepend', ['add_attribute']);
    prepend_obj.varname = 'jscreated_prepend';
    prepend_obj.hidden = true;

    defer_obj = create_obj(hidden_object_location[0],
                            hidden_object_location[1] + (spacing * 5),
                            'deferlow');
        defer_obj.varname = 'jscreated_defer';
    defer_obj.hidden = true;

    this.patcher.hiddenconnect(first_get_attr, 1, created_obj, 0);
    this.patcher.hiddenconnect(first_get_attr, 2, route_obj, 0);
    this.patcher.hiddenconnect(route_obj, 0, iter_obj, 0);
    this.patcher.hiddenconnect(iter_obj, 0, prepend_obj, 0);
    js_obj = this.patcher.getnamed('js_ctrl');
    this.patcher.hiddenconnect(prepend_obj, 0, js_obj, 0);
    this.patcher.hiddenconnect(trigger_obj, 1, first_get_attr, 0);
    this.patcher.hiddenconnect(trigger_obj, 0, defer_obj, 0);
    this.patcher.hiddenconnect(defer_obj, 0, js_obj, 0);
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