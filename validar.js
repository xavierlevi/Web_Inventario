function validar()
{
 var nombre,apellidos,correo,usuario,clave,telefono,expresion;   
    nombre=document.getElementById("nombre").value;
    apellidos=document.getElementById("apellidos").value;
    correo=document.getElementById("correo").value;
    usuario=document.getElementById("usuario").value;
    clave=document.getElementById("clave").value;
    telefono=document.getElementById("telefono").value;
    
    if(nombre==="" || apellidos=="" || correo===""||usuario===""||clave===""||telefono==="")
        alert =("No se admiten campos vacios");
    return false;
}
else if(nombre.length>30)
    {
    alert("El nombre es muy largo");
    }
else if(apellidos.length>80)
    {
    alert("Los apellidos son muy largos")
    }
else if(usuario.length>20 || clave.length> 20)
    {alert=("El usuario y clave deben tener 20 caracteres como maximo");
    }

}