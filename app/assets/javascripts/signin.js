 function ValidateUser() {
    $("#user_new").validate({
        debug: true,
        rules: {
            "user[email]": { required: true },
             "user[password]": {required: true,minlength: 4},
            "user[password_confirmation]": { required: true,equalTo: "#user_password", minlength: 4},
            "user[Phonenumber]": { required: true },
             "user[City]": { required: true, },
              "user[State]": { required: true},

        },
         
errorElement: "span",
    errorClass: "help-block",
     highlight: function(element) {
      $(element).parent().addClass("has-error");
    },
    unhighlight: function(element) {
      $(element).parent().removeClass("has-error");
    },
        messages: {
            "user[email]" : {required : "should only contain letters, numbers, or .-_@"},

            "user[password]": {
            required : "Please specify Password",
            minlength: "Minimum length should be 4 characters"
            },


            "user[password_confirmation]": {
             required : "Please confirm your password",
             minlength: "Minimum length should be 4 characters"
            },


            "user[Phonenumber]" : {
                required: "Please enter a phone number"
            }

        },

         submitHandler: function(form) {
            form.submit();
        }
    });
}
    
var ready;

ready = function() {
   ValidateUser();
}

$(document).ready(ready); 
$(document).on('page:load', ready);var ready;

ready = function() {
   ValidateUser();
}

$(document).ready(ready); 
$(document).on('page:load', ready);