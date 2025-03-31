//Escribir aqui los objetos
object galvan {

    var dinero = 0
    var sueldo = 15000
    var deuda = 0

    method sueldo(){
        return sueldo
    }

    method sueldo(valor) {
        sueldo = valor
    }

    method cambioSueldo(valor) {
      sueldo = valor
    }

    method deuda(){
        return(deuda)
    }

    method dinero() {
        return(dinero)
    }

    method cobrarSueldo(cantidad) {

        if (deuda == 0){
            dinero = dinero + cantidad
        }
        else if(deuda > cantidad){
            deuda = deuda - cantidad
        }
        else {
            dinero = dinero + cantidad - deuda
            deuda = 0
        }

    }

    method totalCobrado() {
    }
  
    method gastar(cantidad){
        if (cantidad > dinero){
            deuda = deuda + cantidad - dinero
            dinero = 0
        }
        else {
            dinero = dinero - cantidad
        }
    }
}

object baigorria {
    var sueldo = 0
    var valEmpanada = 15
    var dinero = 0
    var totalCobrado = 0

    method sueldo(){
        return sueldo
    }

    method sueldo(valor) {
        sueldo = valor
    }
//
  //  method totalCobrado() {
    //    return totalCobrado
    //}

    method totalCobrado() {
      return("El empleado ha cobrado $" + totalCobrado)
      
    }

    method cobrarSueldo(cantidad) {
        dinero = dinero + cantidad
        totalCobrado = totalCobrado + sueldo
        sueldo = 0
    }

    method vender(cantidad) {
        sueldo = sueldo + cantidad * valEmpanada
    }


}

object gimenez {

    var fondo = 300000
    
    method fondo() {
      return (fondo)
    }

    method pagarSueldo(empleado) {
        fondo = fondo - empleado.sueldo()
        empleado.cobrarSueldo(empleado.sueldo())
    }

}