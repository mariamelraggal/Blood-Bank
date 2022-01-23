/*let bloodContainer = document.querySelector(".bloodChange");
let bloodList = document.querySelectorAll(".bloodItem");
let cityContainer = document.querySelector(".cityChange");
let cityList = document.querySelectorAll(".cityItem");


    function Blood_click(clicked) {
        bloodContainer.innerHTML =bloodList[--clicked].innerHTML;

    }

    function City_click(clicked) {
        cityContainer.innerHTML =cityList[--clicked].innerHTML;
    }
    function appearTable(clicked)
    {
        document.querySelector('#dataTable').classList.remove("visible");
    }
*/
    $(document).ready(function() {
        $('#example').DataTable();
    } );
    $('table').dataTable({searching: false});

