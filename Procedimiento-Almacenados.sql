
---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------
create or replace PROCEDURE PA_INSERTAR_AGENCIA
(
CODIGO_AGENCIA IN	NUMBER,
RUC	IN NUMBER,
NOMBRE_GERENTE IN	VARCHAR2,
CIUDAD_AGENCIA	 IN VARCHAR2,
TELEFONO_AGENCIA IN	NUMBER,
CORREO_AGENCIA	IN VARCHAR2
)
AS 
BEGIN
 INSERT into AGENCIA values
  (
CODIGO_AGENCIA,
RUC,
NOMBRE_GERENTE,
CIUDAD_AGENCIA,
TELEFONO_AGENCIA,
CORREO_AGENCIA
);
END PA_INSERTAR_AGENCIA;


-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------

create or replace PROCEDURE PA_INSERTAR_BANCO
(
RUC in NUMBER,
RAZON_SOCIAL in VARCHAR2,
ANIO_FUNDACION in NUMBER,
ACTIVOS_ACTUALES in	float,
SITIO_WEB in VARCHAR2

)

AS 
BEGIN
 INSERT into BANCO values
  (
RUC,
RAZON_SOCIAL,
ANIO_FUNDACION,
ACTIVOS_ACTUALES,
SITIO_WEB

); 

END PA_INSERTAR_BANCO;
-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
create or replace PROCEDURE PA_INSERTAR_CLIENTE
(
CEDULA_CLIENTE	IN NUMBER,
RUC	IN NUMBER,
NOMBRE_CLIENTE	IN VARCHAR2,
SITUACION_LABORAL IN	VARCHAR2,
DIRECCION_CLIENTE IN 	VARCHAR2,
CORREO_CLIENTE	IN VARCHAR2,
TELEFONO_CLIENTE IN	NUMBER
)
AS 
BEGIN
 INSERT into CLIENTE values
  (
CEDULA_CLIENTE,
RUC,
NOMBRE_CLIENTE,
SITUACION_LABORAL,
DIRECCION_CLIENTE,
CORREO_CLIENTE,
TELEFONO_CLIENTE
);
END PA_INSERTAR_CLIENTE;

-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
create or replace PROCEDURE PA_INSERTAR_CUENTA
(
NUMERO_CUENTA	IN NUMBER,
CEDULA_CLIENTE	IN NUMBER,
TIPO_CUENTA	IN VARCHAR2,
FECHA_APERTURA	IN DATE,
BALANCE_MINIMO_CA IN float,
TASA_INTERES_CC	IN float
)

AS 
BEGIN
 INSERT into CUENTA values
  (
NUMERO_CUENTA,
CEDULA_CLIENTE,
TIPO_CUENTA,
FECHA_APERTURA,
BALANCE_MINIMO_CA,
TASA_INTERES_CC
);
END PA_INSERTAR_CUENTA;

-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
create or replace PROCEDURE PA_INSERTAR_INVERSION(
ID_INVERSION	IN NUMBER,
CEDULA_CLIENTE	IN NUMBER,
FECHA_INVERSION IN DATE,
CAPITAL_INVERSION	IN FLOAT,
PLAZO_INVERSION	IN DATE,
INTERES_INVERSION	IN FLOAT
)
AS 
BEGIN
 INSERT into INVERSION values
  (
ID_INVERSION,
CEDULA_CLIENTE,
FECHA_INVERSION ,
CAPITAL_INVERSION,
PLAZO_INVERSION,
INTERES_INVERSION
);
END PA_INSERTAR_INVERSION;

-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
create or replace PROCEDURE PA_INSERTAR_PAGO(
ID_PAGO	IN NUMBER,
NUMERO_PRES	IN NUMBER,
NUMERO_PAGO IN NUMBER,
FECHA_PAGO	IN DATE,
CAPITAL_INICIAL IN FLOAT,
AMORTIZACION_CAPITAL IN FLOAT,
INTERES_MENSUAL IN FLOAT,
VALOR_CUOTA IN FLOAT,
VALOR_PAGO FLOAT
)
AS 
BEGIN
 INSERT into PAGO values
  (
ID_PAGO,
NUMERO_PRES,
NUMERO_PAGO,
FECHA_PAGO,
CAPITAL_INICIAL,
AMORTIZACION_CAPITAL,
INTERES_MENSUAL,
VALOR_CUOTA,
VALOR_PAGO
);
END PA_INSERTAR_PAGO;

-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------
create or replace PROCEDURE PA_INSERTAR_PRESTAMO(
NUMERO_PRES	IN NUMBER,
CEDULA_CLIENTE	IN NUMBER,
FECHA_PRESTAMO	IN DATE,
TIPO_PRESTAMO	IN VARCHAR2,
MONTO_PRESTAMO	IN FLOAT,
INTERES_PRESTAMO IN	FLOAT,
FRECUENCIA_PAGO_DIAS	IN INTEGER,
NUMERO_CUOTAS	IN INTEGER,
SALDO_PRESTAMO	IN FLOAT,
SIGUIENTE_PAGO IN DATE

)
AS 
BEGIN
 INSERT into PRESTAMO values
  (
NUMERO_PRES,
CEDULA_CLIENTE,
FECHA_PRESTAMO,
TIPO_PRESTAMO,
MONTO_PRESTAMO,
INTERES_PRESTAMO,
FRECUENCIA_PAGO_DIAS,
NUMERO_CUOTAS,
SALDO_PRESTAMO,
SIGUIENTE_PAGO 
);
END PA_INSERTAR_PRESTAMO;