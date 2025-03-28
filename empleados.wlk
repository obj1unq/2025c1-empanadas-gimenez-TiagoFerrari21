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
        else (deuda < cantidad){
            dinero = dinero + cantidad - deuda
            deuda = 0
        }

    }

    method totalCobrado() {
    }
  
    method gastar(cantidad){
        if (cantidad > dinero){
            deuda = deuda + cantidad - dinero
        }
        else {
            dinero = dinero - cantidad
        }
    }
}

object baigorria {
    var sueldo = 0
    var ValEmpanada = 15
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

    method ventaEmpanadas(cantidad) {
        sueldo = sueldo + cantidad * ValEmpanada
    }


}

object gimenez {

    var fondoDeSueldos = 300000
    
    method fondoDeSueldos() {
      return (fondoDeSueldos)
    }

    method pagoDeSueldo(empleado) {
        fondoDeSueldos = fondoDeSueldos - empleado.sueldo()
        empleado.cobrarSueldo(empleado.sueldo())
    }

}