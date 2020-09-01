
function Preview(){
    var output_1 = document.getElementById('image');
    output_1.src = URL.createObjectURL(event.target.files[0]);
    output_1.onload = function() {
        URL.revokeObjectURL(output_1.src)
    }
};
function Preview1(){
    var output_1 = document.getElementById('image1');
    output_1.src = URL.createObjectURL(event.target.files[0]);
    output_1.onload = function() {
        URL.revokeObjectURL(output_1.src)
    }
};
function Preview2(){
    var output_1 = document.getElementById('image2');
    output_1.src = URL.createObjectURL(event.target.files[0]);
    output_1.onload = function() {
        URL.revokeObjectURL(output_1.src)
    }
};
function Preview3(){
    var output_1 = document.getElementById('image3');
    output_1.src = URL.createObjectURL(event.target.files[0]);
    output_1.onload = function() {
        URL.revokeObjectURL(output_1.src)
    }
};






