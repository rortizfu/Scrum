$(document).ready(function () {
    GetPage();

    $("#selPage").change(function () {
        clsContent();
        getContent($("#selPage").val());
    });
});

function GetPage() {
    ModalLoaderShow();

    $.ajax({
        dataType: "json",
        type: "POST",
        url: urlServices + "/Page/GetList/",
        contentType: "application/json; charset=utf-8",
        data: {},
        success: function OnSuccess(response) {
            if (response[0].Result.length > 0) {
                $("#selPage").append("<option value=0>Seleccione...</option>");
                $.each(response[0].Result, function (key, value) {
                    $("#selPage").append("<option value=" + value.PageId + ">" + value.PageName + "</option>");
                });
            }
            else {
                alert("No es posible obtener la lista, por favor intente de nuevo.");
            }
            ModalLoaderHidden();
        },
        failure: function OnError(error) {
            ModalLoaderHidden();
            alert("No es posible obtener la lista, por favor intente de nuevo.");
        }
    });
}

const getContent = (IdPage) => {
    ModalLoaderShow();

    if (IdPage > 0) {


        $.ajax({
            dataType: "json",
            type: "POST",
            url: urlServices + "/Content/GetListAdmin/",
            contentType: "application/json; charset=utf-8",
            data: IdPage,
            success: function OnSuccess(response) {
                let cont = 0;
                $("#tblContent > tr").remove();
                $("#tblPaginator > li").remove();

                if (response.length > 0) {
                    $("#pnlContent").removeClass("dvNotVisible");

                    const spanMain = document.createElement("span");
                    spanMain.innerText = "Contenidos de la página:";

                    $("#pnlVariable-Heading").children().remove();
                    $("#pnlVariable-Heading").append(spanMain);

                    $.each(response[0].Result, function (key, value) {
                        value.ContentState = !value.ContentState;
                        $("#tblContenido").append("<tr>" +
                            "<th scope='row' style='width: 20%'>" +

                            "<button id='btn" + cont + "'onclick='updateContent(" + JSON.stringify(value) + ")' type='button' class='btn btn-" + (value.ContentState ? "success" : "danger")+"'>" + (value.ContentState ? "Activar" : "Inactivar") + "</button> " +

                            (value.Component > 0 ? "<button id='btn" + cont + "'onclick='addComponent(" + JSON.stringify(value) + ")' type='button' class='btn btn-success'>+ Componente</button></th>" : "") + 

                            "</th >" + 
                            "<input type='hidden' id='hdn'" + cont + " value='' name='testing' />" +
                            "<th>" + value.ContentId + "</th>" +
                            "<th>" + value.ContentName + "</th>" +
                            "<th>" + (!value.ContentState ? "Activo" : "Inactivo") +
                            "</th></tr>");
                        cont += 1;
                    });
                    if (cont > 10) {
                        $('#tblContenido').pageMe({ pagerSelector: '#tblPaginator', showPrevNext: true, hidePageNumbers: false, perPage: 10 });
                        $('#tblPaginator').removeClass("cssNotVisible");
                    }
                }
                else {
                    if (content.ContentId !== null && content.ContentId > 0)
                        alert("No hay contenidos para esta página.");
                    else
                        alert("No es posible obtener la lista, por favor intente de nuevo.");
                }
                ModalLoaderHidden();
            },
            failure: function OnError(error) {
                ModalLoaderHidden();
                alert("No es posible obtener la lista, por favor intente de nuevo.");
            }
        });
    }
    else {
        alert("Debe seleccionar una pagína, para editar las variables del contenido.");
        ModalLoaderHidden();
    }
};

const updateContent = (content) => {
    ModalLoaderShow();

    $.ajax({
        dataType: "json",
        type: "POST",
        url: urlServices + "/content/UpdateContent/",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(content),
        success: function OnSuccess(response) {
            ModalLoaderHidden();
            if (response[0].State) {
                alert("Contenido actualizado correctamente.");

                clsContent();
                getContent($("#selPage").val());
            }
            else {
                alert("No es posible actualizar el contenido, por favor intente de nuevo.");
            }
        },
        failure: function OnError(error) {
            ModalLoaderHidden();
            alert("No es posible actualizar el contenido, por favor intente de nuevo.");
        }
    });
};

const clsContent = () => {
    $("#pnlContent").addClass("dvNotVisible");

    $("#tblContenido > tr").remove();
    $("#tblPaginator > li").remove();
};

const addComponent = (content) => {

    const body = this.document.createElement("div");
    body.setAttribute("style", "width: 500px;")

    const divCampo = document.createElement("div");
    divCampo.classList.add("form-group");

    const label = document.createElement("label");
    label.setAttribute("for", "labelField");
    label.innerText = "Descripción";

    divCampo.appendChild(label);

    const fieldDescription = document.createElement("input");
    fieldDescription.type = "text";
    fieldDescription.classList.add("form-control");
    fieldDescription.required = true;
    fieldDescription.name = "txtDescription";
    fieldDescription.value = "";
    fieldDescription.placeholder = "Descripción"

    divCampo.appendChild(fieldDescription);

    const hr = document.createElement("hr");
    divCampo.appendChild(hr);

    const sp = document.createElement("span");
    sp.innerText = "Variables"    
    divCampo.appendChild(sp);

    const divVariable = document.createElement("div");
    //divVariable.classList.add("form-control");

    for (var i = 1; i <= content.ComponentCantVarText; i++) {
        const divCampoText = document.createElement("div");
        
        divCampoText.classList.add("form-group");

        const label = document.createElement("label");
        label.setAttribute("for", "labelField");
        label.innerText = "Variable Texto " + i.toString();

        const fieldVariable = document.createElement("input");
        fieldVariable.type = "text";
        fieldVariable.classList.add("form-control");
        fieldVariable.required = true;
        fieldVariable.name = "variableText" + i.toString();
        fieldVariable.value = "";
        fieldVariable.placeholder = "Variable " + i.toString();

        divCampoText.appendChild(label);
        divCampoText.appendChild(fieldVariable);

        divVariable.appendChild(divCampoText);
    }

    
    //---------------------------------------------------------------------
    
    for (var i = 1; i <= content.ComponentCantVarImage; i++) {
        const div = document.createElement("div");
        const label = document.createElement("label");
        label.setAttribute("for", "labelField");
        label.innerText = "Variable Imagen " + i.toString();

        div.appendChild(label);

        div.classList.add("form-group");

        const divCampoImage = document.createElement("div");           

        const inputValorVariable = document.createElement("input");
        inputValorVariable.id = "inputValorVariable";
        inputValorVariable.classList.add("form-control");
        inputValorVariable.name = "variableImage" + i.toString();
        inputValorVariable.type = "text";
        inputValorVariable.required = "required";
        inputValorVariable.maxLength = 1000;
        
        inputValorVariable.disabled = true;

        divCampoImage.classList.add("input-group");
        divCampoImage.classList.add("input-file");

        inputValorVariable.placeholder = "Seleccione el archivo...";        

        const btnFile = document.createElement("button");
        btnFile.id = "btnFile";
        btnFile.type = "button";
        btnFile.classList.add("btn");
        btnFile.classList.add("btn-info");
        btnFile.classList.add("btn-choose");
        btnFile.innerText = "Seleccionar";
        btnFile.classList.add("btnSelect");

        const span = document.createElement("span");
        span.classList.add("input-group-btn");

        divCampoImage.appendChild(span);
        span.appendChild(btnFile);

        divCampoImage.appendChild(span);

        divCampoImage.appendChild(inputValorVariable);

        div.appendChild(divCampoImage)

        divVariable.appendChild(div);
    }



    divCampo.appendChild(divVariable);
    body.appendChild(divCampo);


    const btnCancel = document.createElement("button");
    btnCancel.id = "btnCancel";
    btnCancel.type = "button";
    btnCancel.classList.add("btn");
    btnCancel.classList.add("btn-danger");
    btnCancel.setAttribute("data-dismiss", "modal");
    btnCancel.innerText = "Cancelar";

    const btnAceppt = document.createElement("button");
    btnAceppt.id = "btnAceppt";
    btnAceppt.type = "button";
    btnAceppt.classList.add("btn");
    btnAceppt.classList.add("btn-success");
    btnAceppt.innerText = "Aceptar";
    btnAceppt.setAttribute("data-dismiss", "modal");
    btnAceppt.onclick = function (e) {
        ModalLoaderShow();


        var array = [];
        for (var i = 0; i <= divVariable.childElementCount - 1; i++) {
            for (var j = 0; j <= divVariable.children[i].childElementCount - 1; j++) {

                if (((divVariable.children[i]).children[j]).childElementCount > 0) {

                    for (var k = 0; k <= ((divVariable.children[i]).children[j]).childElementCount - 1; k++) {
                        if (((divVariable.children[i]).children[j]).children[k].tagName === "INPUT") {
                            var object = {
                                Name: ((divVariable.children[i]).children[j]).children[k].name,
                                Value: ((divVariable.children[i]).children[j]).children[k].value
                            }

                            array.push(object);
                        }
                    }
                }

                else {
                    if ((divVariable.children[i]).children[j].tagName === "INPUT") {
                        var object = {
                            Name: (divVariable.children[i]).children[j].name,
                            Value: (divVariable.children[i]).children[j].value
                        }

                        array.push(object);
                    }
                }

                
            }
        }


        content.ListComponent = array;


        $.ajax({
            dataType: "json",
            type: "POST",
            url: urlServices + "/content/AddComponent/",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(content),
            success: function OnSuccess(response) {
                ModalLoaderHidden();
                if (response[0].State) {
                    alert("Contenido actualizado correctamente.");

                    clsContent();
                    getContent($("#selPage").val());
                }
                else {
                    alert("No es posible actualizar el contenido, por favor intente de nuevo.");
                }
            },
            failure: function OnError(error) {
                ModalLoaderHidden();
                alert("No es posible actualizar el contenido, por favor intente de nuevo.");
            }
        });
    };

    const modalFooter = this.document.createElement("div");
    modalFooter.id = "modalFooter";
    modalFooter.classList.add("modal-footer");

    modalFooter.appendChild(btnAceppt);
    modalFooter.appendChild(btnCancel);

    ModalShow(body, modalFooter, true, "Agregar compomente");
};