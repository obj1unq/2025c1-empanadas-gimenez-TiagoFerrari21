//Escribir aqui los objetos
object galvan {
  var dinero = 0
  var sueldo = 15000
  var deuda = 0
  
  method sueldo() = sueldo
  
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }
  
  method cambioSueldo(valor) {
    sueldo = valor
  }
  
  method deuda() = deuda
  
  method dinero() = dinero
  
  method cobrarSueldo(cantidad) {
    if (deuda == 0) {
      dinero += cantidad
    } else {
      if (deuda > cantidad) {
        deuda -= cantidad
      } else {
        dinero = (dinero + cantidad) - deuda
        deuda = 0
      }
    }
  }
  
  method totalCobrado() {
    
  }
  
  method gastar(cantidad) {
    if (cantidad > dinero) {
      deuda = (deuda + cantidad) - dinero
      dinero = 0
    } else {
      dinero -= cantidad
    }
  }
}

object baigorria {
  var sueldo = 0
  var valEmpanada = 15
  var dinero = 0
  var totalCobrado = 0
  
  method sueldo() = sueldo
  
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }
  
  method totalCobrado() = "El empleado ha cobrado $" + totalCobrado
  
  method cobrarSueldo(cantidad) {
    dinero += cantidad
    totalCobrado += sueldo
    sueldo = 0
  }
  
  method vender(cantidad) {
    sueldo += cantidad * valEmpanada
  }
}

object gimenez {
  var fondo = 300000
  
  method fondo() = fondo
  
  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrarSueldo(empleado.sueldo())
  }
}