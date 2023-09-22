// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require bootstrap-multiselect
//= require filterrific/filterrific-jquery



$( document ).on('turbolinks:load', function() {
  $(window).on('popstate', function() {
    location.reload(true);
 });



  $('#brands_filter').multiselect({
    maxHeight: 200,
      buttonText: function(options, select) {
        return 'BRAND';
    },
    buttonTitle: function(options, select) {
      var labels = [];
      options.each(function () {
          labels.push($(this).text());
      });
      return labels.join(' - ');
  },
  onChange: function() {
        var selected = this.$select.val();
        // ...
    }

  });
  $('#categories_filter').multiselect({
    maxHeight: 200,
      buttonText: function(options, select) {
        return 'CATERGORY';
    },
    buttonTitle: function(options, select) {
        var labels = [];
        options.each(function () {
            labels.push($(this).text());
        });
        return labels.join(' - ');
    }
  });
  $('#collections_filter').multiselect({
    maxHeight: 200,
      buttonText: function(options, select) {
        return 'COLLECTION';
    },
    buttonTitle: function(options, select) {
        var labels = [];
        options.each(function () {
            labels.push($(this).text());
        });
        return labels.join(' - ');
    }
  });

  $("#filterrific_sorted_by").multiselect({
    maxHeight: 200,

    buttonTitle: function(options, select) {
        var labels = [];
        options.each(function () {
            labels.push($(this).text());
        });
        return labels.join(' - ');
    }
  });

  





  $('body')
  .on('mouseenter mouseleave','.dropdown',toggleDropdown)
  .on('click', '.dropdown-menu a', toggleDropdown);

  $(".hover").mouseleave(
    function () {
      $(this).removeClass("hover");
    }

  );

  $("#megamenu_categories").click(function(){
    window.location.href="/categories/";
  });
  $("#megamenu_brands").click(function(){
    window.location.href="/brands/";
  });
  $("#megamenu_collections").click(function(){
    window.location.href="/collections/";
  });

  $(".quick_view a").click(function(){
    var id = $(this).attr("data-target");
    $(id).modal("show");
  });


  $('.add').click(function () {
		if ($(this).prev().val() < 10) {
    	$(this).prev().val(+$(this).prev().val() + 1);
		}
    });
    $('.sub').click(function () {
        if ($(this).next().val() > 1) {
          if ($(this).next().val() > 1) $(this).next().val(+$(this).next().val() - 1);
        }
    });




});
function toggleDropdown (e) {
  const _d = $(e.target).closest('.dropdown'),
    _m = $('.dropdown-menu', _d);
  setTimeout(function(){
    const shouldOpen = e.type !== 'click' && _d.is(':hover');
    _m.toggleClass('show', shouldOpen);
    _d.toggleClass('show', shouldOpen);
    $('[data-toggle="dropdown"]', _d).attr('aria-expanded', shouldOpen);
  }, e.type === 'mouseleave' ? 300 : 0);

}

function generateModal(id,item_image,item_id,item_name,item_brand,item_price,item_barcode){
  $(id+" .modal-content").append('<div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button></div> <div class="modal-body"><div class="container-fluid"><div class="row"><div class="col-sm"><img class="card-img-top" alt="image" src='+item_image+'></div><div class="col-sm"><div class="details_item"><div class="details_name mb-0"><h6><a href="/products/'+item_id+'">'+item_name+'</a></h6></div><div class="details_attr m-0"><p class="small m-0">ITEM#'+item_barcode+'</p><p class="small m-0">BRAND:'+item_brand+'</p></div><div class="details_order mt-3"><div class="details_price"><h4>'+item_price+'</h4></div><div class="details_quantity"> <select class="form-control"><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option></select><div class="details_btn mt-3"><button class="btn" id="details_add_cart">ADD TO CART</button></div> </div></div></div> </div></div></div>');
}

