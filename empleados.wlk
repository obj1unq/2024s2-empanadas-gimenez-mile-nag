object galvan {
  var sueldo = 15000
  var saldo = 0
  
  method sueldo() = sueldo
  
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }
  
  method dinero() = saldo.max(0)
  
  method deuda() = saldo.min(0).abs()
  
  method gastar(monto) {
    saldo = saldo - monto
  }
  
  method cobrar() {
    saldo = saldo + sueldo
  }
}

object baigorria {
  var cantDeEmpanadasVendidas = 0
  var precioPorEmpanada = 15
  var totalCobrado = 0
  
  method vender(cantidad) {
    cantDeEmpanadasVendidas = cantDeEmpanadasVendidas + cantidad
  }
  
  method sueldo() = cantDeEmpanadasVendidas * precioPorEmpanada
  
  method cobrar() {
    totalCobrado = totalCobrado + self.sueldo()
    cantDeEmpanadasVendidas = 0
  }
  
  method totalCobrado() = totalCobrado
}

object gimenez {
  var fondo = 300000
  
  method fondo() = fondo
  
  method pagarSueldo(empleado) {
    fondo = fondo - empleado.sueldo()
    empleado.cobrar()
  }
}