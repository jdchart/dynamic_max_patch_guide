setinletassist(0, 'Ctrl In');
setoutletassist(0, 'Ctrl Out');

function set_button_bgcol(r, g, b, a){
    obj = this.patcher.getnamed("play_bang");
    
    obj.message('bgcolor', r, g, b, a);

    outlet(0, 'button_bg bgcolor ' + String(r) + ' ' + String(g) + ' ' + String(b) + ' ' + String(a));
}

function set_panel_bgcol(r, g, b, a){
    obj = this.patcher.firstobject;

    for(i = 0; i < this.patcher.count; i++){
        if(obj.maxclass == 'panel'){
            obj.message('bgcolor', r, g, b, a);
        }
        
        obj = obj.nextobject;
    }
}

function show_objects(x){
    obj = this.patcher.firstobject;

    for(i = 0; i < this.patcher.count; i++){
        if(x == 0){
            if(obj.varname == 'play_bang' || obj.varname == 'show_toggle'){
                obj.hidden = false;
            }
            else{
                obj.hidden = true;
            }
        }
        else{
            obj.hidden = false;
        }
        
        obj = obj.nextobject;
    }
}

function set_slider_width(x){
    obj = this.patcher.getnamed('slider');

    obj.message('patching_rect', obj.rect[0], obj.rect[1], x, 40);
    obj.message('orientation', 1);
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

    set_button_bgcol(0.200, 0.200, 0.200, 1.000);
    set_button_bgcol(0.432681, 0.692697, 0.490851, 1.);
}

function create_obj(x, y, object, args){
    obj = this.patcher.newdefault(x, y, object, args);
    obj.varname = 'jscreated';

    return obj;
}