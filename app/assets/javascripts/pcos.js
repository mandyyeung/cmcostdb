$(document).ready(function(){
  $('#pcos').DataTable({
    responsive: true
  });
  $('.label').each(function(){
    var $this = $(this),
        classToAdd = null;
    switch ($this.text()){
      case 'Approved':
        classToAdd = 'label-success';
        break;
      case 'Pending':
        classToAdd = 'label-primary';
        break;
      case 'Approximate':
        classToAdd = 'label-danger';
        break;
      case 'Void':
        classToAdd = 'label-default';
        break;
    }
    if (classToAdd !== null){
      $this.addClass(classToAdd);
    }
  });
});
