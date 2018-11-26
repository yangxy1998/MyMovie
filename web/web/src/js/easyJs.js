var tabs = document.getElementById('mytabs').getElementsByTagName('li');
var contents = document.getElementsByClassName('con');
function Change(index){
    for (var i=0;i<3;i++){
        tabs[i].className='ucurrent';
        contents[i].style.display='none';
    }
    contents[index].style.display='block';
    tabs[index].className='current';
}