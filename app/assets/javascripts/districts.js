var app = window.app = {};

app.Districts = function() {
  this._input = $('#districts-search-txt');
  this._initAutocomplete();
};

app.Districts.prototype = {

};

_initAutocomplete: function() {
  this._input
    .autocomplete({
      source: '/districts',
      appendTo: '#districts-search-results',
      select: $.proxy(this._select, this)
    })
    .autocomplete('instance')._renderItem = $.proxy(this._render, this);
}

_select: function(e, ui) {
  this._input.val(ui.item.district_name);
  return false;
}

_render: function(ul, item) {
  var markup = [
    '<span class="district-name">' + item.district_name + '</span>'
  ];
  return $('<li>')
    .append(markup.join(''))
    .appendTo(ul);
}