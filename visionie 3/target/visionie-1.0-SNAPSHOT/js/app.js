/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

// Reference: Displaying current date in a text box - javascript. Stack Overflow. (n.d.). Retrieved November 4, 2022, from https://stackoverflow.com/questions/35275235/displaying-current-date-in-a-text-box-javascript/41037447 
 $(function () {
        $(".date").datepicker({
            autoclose: true,
            todayHighlight: true
        });
    });