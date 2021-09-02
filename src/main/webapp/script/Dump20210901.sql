-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: mcm
-- ------------------------------------------------------
-- Server version	5.7.33-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agenda` (
  `idAgenda` int(11) NOT NULL,
  `id_Servicios` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idAgenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` VALUES (2,'2','2021-07-05'),(3,'3','2021-07-21'),(4,'2','2021-08-29');
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analistainventarios`
--

DROP TABLE IF EXISTS `analistainventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analistainventarios` (
  `idEmpleado` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `FK_analistainventarios_Usuario_idUsuario` (`Usuario_idUsuario`),
  CONSTRAINT `FK_analistainventarios_Usuario_idUsuario` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analistainventarios`
--

LOCK TABLES `analistainventarios` WRITE;
/*!40000 ALTER TABLE `analistainventarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `analistainventarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonificacion`
--

DROP TABLE IF EXISTS `bonificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonificacion` (
  `idBonificacion` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Total` varchar(45) DEFAULT NULL,
  `Tecnicos_idTecnicos` int(11) NOT NULL,
  PRIMARY KEY (`idBonificacion`),
  KEY `fk_Bonificacion_Tecnicos1_idx` (`Tecnicos_idTecnicos`),
  CONSTRAINT `fk_Bonificacion_Tecnicos1` FOREIGN KEY (`Tecnicos_idTecnicos`) REFERENCES `tecnicos` (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonificacion`
--

LOCK TABLES `bonificacion` WRITE;
/*!40000 ALTER TABLE `bonificacion` DISABLE KEYS */;
INSERT INTO `bonificacion` VALUES (1,'2021-07-23','34',2),(2,'2021-07-21','0',3);
/*!40000 ALTER TABLE `bonificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `idCargos` int(11) NOT NULL,
  `nombre_cargo` tinytext,
  PRIMARY KEY (`idCargos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'Coordinador'),(2,'Gerente'),(3,'Director'),(4,'Asistente'),(5,'Secretaria');
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_producto`
--

DROP TABLE IF EXISTS `categoria_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_producto` (
  `idCategoria` int(11) NOT NULL,
  `nombre_cate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_producto`
--

LOCK TABLES `categoria_producto` WRITE;
/*!40000 ALTER TABLE `categoria_producto` DISABLE KEYS */;
INSERT INTO `categoria_producto` VALUES (1,'Shakers'),(4,'Otro');
/*!40000 ALTER TABLE `categoria_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudades` (
  `idCiudad` int(11) NOT NULL,
  `nombre_ciudad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCiudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (1,'Bogota'),(2,'Medellín'),(3,'Cali'),(4,'Santa Marta'),(5,'CARTAGENA'),(6,'CÚCUTA'),(7,'SOLEDAD'),(8,'IBAGUÉ'),(9,'BUCARAMANGA'),(10,'SANTA MARTA'),(11,'VILLAVICENCIO'),(12,'SOACHA'),(13,'PEREIRA'),(14,'BELLO'),(15,'VALLEDUPAR'),(16,'MONTERÍA'),(17,'PASTO'),(18,'MANIZALES'),(19,'BUENAVENTURA'),(20,'NEIVA'),(21,'BARRANCABERMEJA'),(22,'PALMIRA'),(23,'ARMENIA'),(24,'POPAYÁN'),(25,'SINCELEJO'),(26,'ITAGUI'),(27,'FLORIDABLANCA'),(28,'RIOHACHA'),(29,'ENVIGADO'),(30,'TULUÁ'),(31,'DOSQUEBRADAS'),(32,'SAN ANDRÉS DE TUMACO'),(33,'TUNJA'),(34,'GIRÓN'),(35,'APARTADÓ'),(36,'FLORENCIA'),(37,'URIBIA'),(38,'IPIALES'),(39,'TURBO'),(40,'MAICAO'),(41,'PIEDECUESTA'),(42,'YOPAL'),(43,'OCAÑA'),(44,'FUSAGASUGÁ'),(45,'CARTAGO'),(46,'FACATATIVÁ'),(47,'CHÍA'),(48,'MAGANGUÉ'),(49,'PITALITO'),(50,'CAUCASIA'),(51,'ZIPAQUIRÁ'),(52,'MALAMBO'),(53,'RIONEGRO'),(54,'LORICA'),(55,'JAMUNDI'),(56,'QUIBDÓ'),(57,'GUADALAJARA DE BUGA'),(58,'YUMBO'),(59,'SOGAMOSO'),(60,'DUITAMA'),(61,'GIRARDOT'),(62,'CIÉNAGA');
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `contacto` varchar(45) NOT NULL,
  `Vendedor_idVendedor` int(11) NOT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `fk_Cliente_Vendedor1_idx` (`Vendedor_idVendedor`),
  CONSTRAINT `fk_Cliente_Vendedor1` FOREIGN KEY (`Vendedor_idVendedor`) REFERENCES `vendedor` (`idVendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Ecopetrol','C','Juan',1,'8051533','juan@ecopetrol.com'),(2,'Cliente#2','direccion #2','contacto #2',1,'telefono #2','email #2'),(3,'Ramdeti','calle ','erlin',2,'34342','maating@maa');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura_venta`
--

DROP TABLE IF EXISTS `detalle_factura_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_factura_venta` (
  `idDetallefactura` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` mediumtext CHARACTER SET armscii8,
  `Descripcion` varchar(45) DEFAULT NULL,
  `FacturaVenta_idFactura` int(11) NOT NULL,
  PRIMARY KEY (`idDetallefactura`),
  KEY `fk_Detalle Factura Venta_Factura de Venta2_idx` (`FacturaVenta_idFactura`),
  CONSTRAINT `FK_detallefacturaventa_FacturaVenta_idFactura` FOREIGN KEY (`FacturaVenta_idFactura`) REFERENCES `factura_de_venta` (`idFactura`),
  CONSTRAINT `fk_Detalle Factura Venta_Factura de Venta2` FOREIGN KEY (`FacturaVenta_idFactura`) REFERENCES `factura_de_venta` (`idFactura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura_venta`
--

LOCK TABLES `detalle_factura_venta` WRITE;
/*!40000 ALTER TABLE `detalle_factura_venta` DISABLE KEYS */;
INSERT INTO `detalle_factura_venta` VALUES (1,2,'2500','Mallas',1),(2,32,'4586','Shakers',1);
/*!40000 ALTER TABLE `detalle_factura_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_orden_compra`
--

DROP TABLE IF EXISTS `detalle_orden_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_orden_compra` (
  `idDetalle` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_compra` double DEFAULT NULL,
  `OrdenCompra_idOrden` int(11) NOT NULL,
  `Producto_idProducto` int(11) NOT NULL,
  PRIMARY KEY (`idDetalle`),
  KEY `fk_DetalleOrdenCompra_OrdenCompra_idx` (`OrdenCompra_idOrden`),
  KEY `fk_DetalleOrdenCompra_Producto_idx` (`Producto_idProducto`),
  CONSTRAINT `fk_DetalleOrdenCompra_OrdenCompra` FOREIGN KEY (`OrdenCompra_idOrden`) REFERENCES `orden_de_compra` (`idOrden`),
  CONSTRAINT `fk_DetalleOrdenCompra_Producto` FOREIGN KEY (`Producto_idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_orden_compra`
--

LOCK TABLES `detalle_orden_compra` WRITE;
/*!40000 ALTER TABLE `detalle_orden_compra` DISABLE KEYS */;
INSERT INTO `detalle_orden_compra` VALUES ('1','mallas',22,345,1,2);
/*!40000 ALTER TABLE `detalle_orden_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_tareas`
--

DROP TABLE IF EXISTS `detalle_tareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_tareas` (
  `idDetalle` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `Tareas_idTareas` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `Tecnicos_idEmpleado` int(11) NOT NULL,
  PRIMARY KEY (`idDetalle`),
  KEY `fk_Detalle tareas_Tareas1_idx` (`Tareas_idTareas`),
  KEY `fk_Detalle tareas_Tecnicos1_idx` (`Tecnicos_idEmpleado`),
  CONSTRAINT `fk_Detalle tareas_Tareas1` FOREIGN KEY (`Tareas_idTareas`) REFERENCES `tareas` (`idTareas`),
  CONSTRAINT `fk_Detalle tareas_Tecnicos1` FOREIGN KEY (`Tecnicos_idEmpleado`) REFERENCES `tecnicos` (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_tareas`
--

LOCK TABLES `detalle_tareas` WRITE;
/*!40000 ALTER TABLE `detalle_tareas` DISABLE KEYS */;
INSERT INTO `detalle_tareas` VALUES (1,'2021-07-06',1,'Otras actividades varias',3),(2,'2021-07-06',1,'Cambio de turno 3',2);
/*!40000 ALTER TABLE `detalle_tareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_de_venta`
--

DROP TABLE IF EXISTS `factura_de_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_de_venta` (
  `idFactura` int(11) NOT NULL,
  `iva` float NOT NULL,
  `fecha` date NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  `ModoPago_idModo` int(11) NOT NULL,
  PRIMARY KEY (`idFactura`),
  KEY `fk_Factura de Venta_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Factura de Venta_Modo de pago1_idx` (`ModoPago_idModo`),
  CONSTRAINT `FK_facturadeventa_Cliente_idCliente` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `FK_facturadeventa_ModoPago_idModo` FOREIGN KEY (`ModoPago_idModo`) REFERENCES `modo_de_pago` (`idModo`),
  CONSTRAINT `fk_Factura de Venta_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `fk_Factura de Venta_Modo de pago1` FOREIGN KEY (`ModoPago_idModo`) REFERENCES `modo_de_pago` (`idModo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_de_venta`
--

LOCK TABLES `factura_de_venta` WRITE;
/*!40000 ALTER TABLE `factura_de_venta` DISABLE KEYS */;
INSERT INTO `factura_de_venta` VALUES (1,0.1,'2021-06-01',1,1);
/*!40000 ALTER TABLE `factura_de_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerente`
--

DROP TABLE IF EXISTS `gerente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gerente` (
  `Usuario_idUsuario` int(11) NOT NULL,
  `idGerente` int(11) NOT NULL,
  PRIMARY KEY (`idGerente`),
  KEY `fk_Gerente_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Gerente_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerente`
--

LOCK TABLES `gerente` WRITE;
/*!40000 ALTER TABLE `gerente` DISABLE KEYS */;
INSERT INTO `gerente` VALUES (1053,1),(1054,2);
/*!40000 ALTER TABLE `gerente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `idInventario` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` int(11) DEFAULT NULL,
  `Producto_idProducto` int(11) NOT NULL,
  PRIMARY KEY (`idInventario`),
  KEY `fk_Inventario_Producto1_idx` (`Producto_idProducto`),
  CONSTRAINT `FK_inventario_Producto_idProducto` FOREIGN KEY (`Producto_idProducto`) REFERENCES `producto` (`idProducto`),
  CONSTRAINT `fk_Inventario_Producto1` FOREIGN KEY (`Producto_idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,2,23,1),(2,25,252,1);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modo_de_pago`
--

DROP TABLE IF EXISTS `modo_de_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modo_de_pago` (
  `idModo` int(11) NOT NULL,
  `modo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idModo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modo_de_pago`
--

LOCK TABLES `modo_de_pago` WRITE;
/*!40000 ALTER TABLE `modo_de_pago` DISABLE KEYS */;
INSERT INTO `modo_de_pago` VALUES (1,'Efectivo'),(2,'Credito'),(3,'Cheque');
/*!40000 ALTER TABLE `modo_de_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_de_compra`
--

DROP TABLE IF EXISTS `orden_de_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_de_compra` (
  `idOrden` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `ModoPago_idModo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idOrden`),
  KEY `FK_orden_de_compra_ModoPago_idModo` (`ModoPago_idModo`),
  CONSTRAINT `FK_orden_de_compra_ModoPago_idModo` FOREIGN KEY (`ModoPago_idModo`) REFERENCES `modo_de_pago` (`idModo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_de_compra`
--

LOCK TABLES `orden_de_compra` WRITE;
/*!40000 ALTER TABLE `orden_de_compra` DISABLE KEYS */;
INSERT INTO `orden_de_compra` VALUES (1,'2021-06-21',1),(2,'2021-07-22',2);
/*!40000 ALTER TABLE `orden_de_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_de_servicio`
--

DROP TABLE IF EXISTS `orden_de_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_de_servicio` (
  `Cliente_idCliente` int(11) NOT NULL,
  `idOrden_de_Servicio` int(11) NOT NULL,
  `TipoServicio_IdTipo` int(11) NOT NULL,
  `Fecha_inicio` date DEFAULT NULL,
  `Fecha_Terminacion` date DEFAULT NULL,
  `Ciudades_idCiudad` int(11) NOT NULL,
  `Gerente_idGerente` int(11) DEFAULT NULL,
  PRIMARY KEY (`idOrden_de_Servicio`),
  KEY `fk_Orden_de Servio_Tipo de Servicio1_idx` (`TipoServicio_IdTipo`),
  KEY `fk_Orden_de Servicio_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Orden_de Servicio_Ciudades1_idx` (`Ciudades_idCiudad`),
  KEY `fk_Orden_de Servicio_Gerente1` (`Gerente_idGerente`),
  CONSTRAINT `gfk_service` FOREIGN KEY (`TipoServicio_IdTipo`) REFERENCES `tipo_servicio` (`idTipoServicio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_de_servicio`
--

LOCK TABLES `orden_de_servicio` WRITE;
/*!40000 ALTER TABLE `orden_de_servicio` DISABLE KEYS */;
INSERT INTO `orden_de_servicio` VALUES (1,1,1,'2021-06-25','2021-06-29',1,2),(2,2,2,'2020-06-25','2021-07-26',2,1);
/*!40000 ALTER TABLE `orden_de_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_de_servio_has_tecnicos`
--

DROP TABLE IF EXISTS `orden_de_servio_has_tecnicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_de_servio_has_tecnicos` (
  `Orden_de Servio_idOrden_de Servio` int(11) NOT NULL,
  `Tecnicos_idEmpleado` int(11) NOT NULL,
  PRIMARY KEY (`Orden_de Servio_idOrden_de Servio`,`Tecnicos_idEmpleado`),
  KEY `fk_Orden_de Servio_has_Tecnicos_Tecnicos1_idx` (`Tecnicos_idEmpleado`),
  KEY `fk_Orden_de Servio_has_Tecnicos_Orden_de Servio1_idx` (`Orden_de Servio_idOrden_de Servio`),
  CONSTRAINT `fk_Orden_de Servio_has_Tecnicos_Orden_de Servio1` FOREIGN KEY (`Orden_de Servio_idOrden_de Servio`) REFERENCES `orden_de_servicio` (`idOrden_de_Servicio`),
  CONSTRAINT `fk_Orden_de Servio_has_Tecnicos_Tecnicos1` FOREIGN KEY (`Tecnicos_idEmpleado`) REFERENCES `tecnicos` (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_de_servio_has_tecnicos`
--

LOCK TABLES `orden_de_servio_has_tecnicos` WRITE;
/*!40000 ALTER TABLE `orden_de_servio_has_tecnicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `orden_de_servio_has_tecnicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(240) DEFAULT NULL,
  `marca` varchar(60) DEFAULT NULL,
  `garantia` varchar(45) DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `Proveedor_idProveedor` int(11) NOT NULL,
  `CategoriaProducto_idCategoria` int(11) NOT NULL,
  `OrdenCompra_idOrden` int(11) NOT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `fk_Producto_Proveedor1_idx` (`Proveedor_idProveedor`),
  KEY `fk_Producto_Categoria Producto1_idx` (`CategoriaProducto_idCategoria`),
  CONSTRAINT `fk_Producto_Categoria Producto1` FOREIGN KEY (`CategoriaProducto_idCategoria`) REFERENCES `categoria_producto` (`idCategoria`),
  CONSTRAINT `fk_Producto_Proveedor1` FOREIGN KEY (`Proveedor_idProveedor`) REFERENCES `proveedor` (`idProveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Package Platino','Pack Platino ref 2000 pk','Maat-II','24 meses',500,2,4,2),(2,'Package Elite','Pack Elite ref 2001 pt','Maat-II','24 meses',2535,2,4,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_has_factura_de_venta`
--

DROP TABLE IF EXISTS `producto_has_factura_de_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_has_factura_de_venta` (
  `Producto_idProducto` int(11) NOT NULL,
  `FacturaVenta_idFactura` int(11) NOT NULL,
  PRIMARY KEY (`FacturaVenta_idFactura`),
  KEY `fk_Producto_has_Factura de Venta_Factura de Venta1_idx` (`FacturaVenta_idFactura`),
  KEY `fk_Producto_has_Factura de Venta_Producto1_idx` (`Producto_idProducto`),
  CONSTRAINT `fk_Producto_has_Factura_de_Venta_Factura de Venta1` FOREIGN KEY (`FacturaVenta_idFactura`) REFERENCES `factura_de_venta` (`idFactura`),
  CONSTRAINT `fk_Producto_has_Factura_de_Venta_Producto1` FOREIGN KEY (`Producto_idProducto`) REFERENCES `producto` (`idProducto`),
  CONSTRAINT `producto_has_facturadeventa_Producto_idProducto` FOREIGN KEY (`Producto_idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_has_factura_de_venta`
--

LOCK TABLES `producto_has_factura_de_venta` WRITE;
/*!40000 ALTER TABLE `producto_has_factura_de_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_has_factura_de_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idProveedor` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `contacto` varchar(60) NOT NULL,
  `Ciudades_idCiudad` int(11) NOT NULL,
  PRIMARY KEY (`idProveedor`),
  KEY `fk_Proveedor_Ciudades1_idx` (`Ciudades_idCiudad`),
  CONSTRAINT `fk_Proveedor_Ciudades1` FOREIGN KEY (`Ciudades_idCiudad`) REFERENCES `ciudades` (`idCiudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Sandra','sandra@gmail.com','666666','calle 234','Paula',1),(2,'Enrique','erlinolaya727@gmail.com','3204956770','calle 155a ','Pepita',4);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idRoles` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idRoles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','administrador'),(2,'vendedor','vendedor'),(3,'Ing','ingeniero'),(4,'Tec','tecnico'),(5,'Coord','coordinador');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `idServicio` int(11) NOT NULL,
  `Fecha_Servicio` date NOT NULL,
  `Tareas` varchar(45) NOT NULL,
  `Agenda_idAgenda` int(11) NOT NULL,
  `OrdenServicio_idOrden` int(11) NOT NULL,
  PRIMARY KEY (`idServicio`),
  KEY `fk_Servicios_Agenda1_idx` (`Agenda_idAgenda`),
  KEY `fk_Servicios_Orden_de Servicio1_idx` (`OrdenServicio_idOrden`),
  CONSTRAINT `fk_Servicios_Agenda1` FOREIGN KEY (`Agenda_idAgenda`) REFERENCES `agenda` (`idAgenda`),
  CONSTRAINT `fk_Servicios_Orden_de Servicio1` FOREIGN KEY (`OrdenServicio_idOrden`) REFERENCES `orden_de_servicio` (`idOrden_de_Servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'2021-06-16','Pintar',3,1),(2,'2020-05-26','Limpieza',2,1);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taladro`
--

DROP TABLE IF EXISTS `taladro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taladro` (
  `Cliente_idCliente` int(11) NOT NULL,
  `idTaladro` int(11) NOT NULL,
  `Nombre_taladro` varchar(45) DEFAULT NULL,
  `Ciudades_idCiudad` int(11) NOT NULL,
  PRIMARY KEY (`idTaladro`),
  KEY `fk_Taladro_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Taladro_Ciudades1_idx` (`Ciudades_idCiudad`),
  CONSTRAINT `fk_Taladro_Ciudades1` FOREIGN KEY (`Ciudades_idCiudad`) REFERENCES `ciudades` (`idCiudad`),
  CONSTRAINT `fk_Taladro_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taladro`
--

LOCK TABLES `taladro` WRITE;
/*!40000 ALTER TABLE `taladro` DISABLE KEYS */;
INSERT INTO `taladro` VALUES (1,1,'esse',3),(1,2,'prueba',1),(1,3,'ONIX8',1);
/*!40000 ALTER TABLE `taladro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tareas`
--

DROP TABLE IF EXISTS `tareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tareas` (
  `idTareas` int(11) NOT NULL,
  `Servicios_idConsecutivo` int(11) NOT NULL,
  `Feha_inicio` date DEFAULT NULL,
  `Duracion` varchar(45) DEFAULT NULL,
  `Fecha_Fin` date DEFAULT NULL,
  PRIMARY KEY (`idTareas`),
  KEY `fk_Tareas_Servicios1_idx` (`Servicios_idConsecutivo`),
  CONSTRAINT `fk_Tareas_Servicios1` FOREIGN KEY (`Servicios_idConsecutivo`) REFERENCES `servicios` (`idServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tareas`
--

LOCK TABLES `tareas` WRITE;
/*!40000 ALTER TABLE `tareas` DISABLE KEYS */;
INSERT INTO `tareas` VALUES (1,2,'2021-07-09','21','2021-07-30'),(2,2,'2021-07-06','1','2021-07-06');
/*!40000 ALTER TABLE `tareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnicos`
--

DROP TABLE IF EXISTS `tecnicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tecnicos` (
  `idEmpleado` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `fk_Tecnicos_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Tecnicos_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnicos`
--

LOCK TABLES `tecnicos` WRITE;
/*!40000 ALTER TABLE `tecnicos` DISABLE KEYS */;
INSERT INTO `tecnicos` VALUES (2,1053),(1,1054),(3,1055);
/*!40000 ALTER TABLE `tecnicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_servicio`
--

DROP TABLE IF EXISTS `tipo_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_servicio` (
  `idTipoServicio` int(11) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_servicio`
--

LOCK TABLES `tipo_servicio` WRITE;
/*!40000 ALTER TABLE `tipo_servicio` DISABLE KEYS */;
INSERT INTO `tipo_servicio` VALUES (1,'Mantenimiento'),(2,'Garantia'),(3,'Correctivo');
/*!40000 ALTER TABLE `tipo_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) NOT NULL,
  `nombre` tinytext NOT NULL,
  `apellido` tinytext NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `Cargos_idCargos` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT '1',
  `usu_foto` varchar(255) DEFAULT NULL,
  `usuTipodocumento` varchar(45) NOT NULL,
  `usuNumeroDocumento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fk_Usuario_Cargos1_idx` (`Cargos_idCargos`),
  CONSTRAINT `fk_Usuario_Cargos1` FOREIGN KEY (`Cargos_idCargos`) REFERENCES `cargos` (`idCargos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1053,'1082881053','3204956770','Erlin','Olaya','Calle 155a # 7f-41 torre 2 apto 302','erlinolaya727@gmail.com',1,1,NULL,'Cedula','1082881053'),(1054,'1013597515','8051533','Jimmy','Rodriguez','Calle 15 f # 22-48','jimmyrodriguezaa@gmail.com',1,0,NULL,'Cedula','1013597515'),(1055,'1152200901','3104658957','Paula','Monsalve','calle 39 Sur # 9-45','pamonsalve10@misena.edu.co',2,1,NULL,'Cedula','1152200901'),(1056,'1023975268','4852355','Sandra','Fernandez','Kra 8 # 5-6','sanfer2457@gmail.com',3,1,NULL,'Cedula','1023975268');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_has_rol`
--

DROP TABLE IF EXISTS `usuario_has_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_has_rol` (
  `fk_usuarioid` int(11) DEFAULT NULL,
  `fk_rolid` int(11) DEFAULT NULL,
  KEY `fk_rol_idx` (`fk_rolid`),
  KEY `fk_usu_idx` (`fk_usuarioid`),
  CONSTRAINT `fk_rol` FOREIGN KEY (`fk_rolid`) REFERENCES `roles` (`idRoles`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usu` FOREIGN KEY (`fk_usuarioid`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_has_rol`
--

LOCK TABLES `usuario_has_rol` WRITE;
/*!40000 ALTER TABLE `usuario_has_rol` DISABLE KEYS */;
INSERT INTO `usuario_has_rol` VALUES (1053,1),(1053,2),(1053,3),(1053,4),(1054,2),(1056,3),(1056,4),(1056,5),(1055,1),(1055,2),(1055,5);
/*!40000 ALTER TABLE `usuario_has_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `comision` float DEFAULT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  `idVendedor` int(11) NOT NULL,
  PRIMARY KEY (`idVendedor`),
  KEY `fk_Vendedor_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Vendedor_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (0.15,1053,1),(0.16,1054,2),(0.17,1055,3);
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-01 22:09:40
