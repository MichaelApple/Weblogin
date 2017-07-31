/**
 * Created by Miha on 31.07.2017.
 */

jQuery(function($){
    $('input').on('keyup', function () {
        var name = $(this).attr("name");
        var regex ="^[A-z'-]{1,20}$";

        switch (name) {
            case "homePhone":
                regex = "^\\([0-9]{3}\\)[0-9]{3}-[0-9]{2}-[0-9]{2}$";
                break;
            case "cellPhone1":
                regex = "^\\([0-9]{3}\\)[0-9]{3}-[0-9]{2}-[0-9]{2}$";
                break;
            case "cellPhone2":
                regex = "^.*$";
                break;
            case "email":
                regex = "^([A-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$";
                break;
            case "skype":
                regex = "[a-z0-9_-]{3,20}$";
                break;
            case "zip":
                regex = "^[0-9]{5}(?:-[0-9]{4})?$";
                break;
            case "flat":
                regex = "^[0-9]{1,3}[A-z]?$";
                break;
            case "buildingNumber":
                regex = "^[0-9]{1,3}[A-z]?$";
                break;
            default:
                regex = "^[A-z'-]{1,20}$";
                break;
        }

        var input = this.value;
        if (input.match(regex)){
            $(this).addClass("form-control-success");
            $(this).parent().parent().addClass("has-success");
            $(this).removeClass("form-control-danger");
            $(this).parent().parent().removeClass("has-danger");
        } else {
            $(this).removeClass("form-control-success");
            $(this).addClass("form-control-danger");
            $(this).parent().parent().addClass("has-danger");
            $(this).parent().parent().removeClass("has-success");

        }
    })
});

