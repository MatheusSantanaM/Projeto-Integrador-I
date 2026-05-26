function scr_fill_description(template, data) {
    var _result = template;
    var _keys = variable_struct_get_names(data);
    
    for (var i = 0; i < array_length(_keys); i++) {
        var _key = _keys[i];
        var _value = variable_struct_get(data, _key);
        _result = string_replace_all(_result, "{" + _key + "}", string(_value));
    }
    
    return _result;
}