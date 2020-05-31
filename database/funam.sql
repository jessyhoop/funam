/*
Navicat MySQL Data Transfer

Source Server         : funam
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : funam

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-03-17 10:15:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for alumno
-- ----------------------------
DROP TABLE IF EXISTS `alumno`;
CREATE TABLE `alumno` (
  `idAlumno` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `aPaterno` varchar(45) NOT NULL,
  `aMaterno` varchar(45) NOT NULL,
  `idCarrera` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`idAlumno`),
  UNIQUE KEY `idalumno_UNIQUE` (`idAlumno`),
  UNIQUE KEY `cuenta_UNIQUE` (`cuenta`),
  KEY `fk_alumno_carrera1_idx` (`idCarrera`),
  CONSTRAINT `fk_alumno_carrera1` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alumno
-- ----------------------------

-- ----------------------------
-- Table structure for carrera
-- ----------------------------
DROP TABLE IF EXISTS `carrera`;
CREATE TABLE `carrera` (
  `idCarrera` int(11) NOT NULL AUTO_INCREMENT,
  `carrera` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idCarrera`),
  UNIQUE KEY `idcarrera_UNIQUE` (`idCarrera`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carrera
-- ----------------------------
INSERT INTO `carrera` VALUES ('1', 'w', '2020-03-09 10:32:19', '2020-02-26 10:32:22', '1');

-- ----------------------------
-- Table structure for control
-- ----------------------------
DROP TABLE IF EXISTS `control`;
CREATE TABLE `control` (
  `idControlTiempo` int(11) NOT NULL AUTO_INCREMENT,
  `impresiones` int(11) NOT NULL,
  `horaEntrada` datetime NOT NULL,
  `horaSalida` datetime NOT NULL,
  `idUsuarioSala` int(11) NOT NULL,
  `idRecibo` int(11) NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`idControlTiempo`),
  KEY `fk_controlTiempo_usuario_sala1_idx` (`idUsuarioSala`),
  KEY `fk_control_recibo1_idx` (`idRecibo`),
  CONSTRAINT `fk_controlTiempo_usuario_sala1` FOREIGN KEY (`idUsuarioSala`) REFERENCES `usuariosala` (`idUsuarioSala`),
  CONSTRAINT `fk_control_recibo1` FOREIGN KEY (`idRecibo`) REFERENCES `recibo` (`idRecibo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of control
-- ----------------------------

-- ----------------------------
-- Table structure for recibo
-- ----------------------------
DROP TABLE IF EXISTS `recibo`;
CREATE TABLE `recibo` (
  `idRecibo` int(11) NOT NULL,
  `hora` int(11) NOT NULL,
  `hojas` int(11) NOT NULL,
  `tipo` char(1) NOT NULL COMMENT '1-tiempo\n2-impresiones\n3-tiempo/impresiones',
  `idAlumno` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`idRecibo`),
  KEY `fk_recibo_alumno1_idx` (`idAlumno`),
  CONSTRAINT `fk_recibo_alumno1` FOREIGN KEY (`idAlumno`) REFERENCES `alumno` (`idAlumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recibo
-- ----------------------------

-- ----------------------------
-- Table structure for rol
-- ----------------------------
DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(45) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`idRol`),
  UNIQUE KEY `idrol_UNIQUE` (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rol
-- ----------------------------

-- ----------------------------
-- Table structure for sala
-- ----------------------------
DROP TABLE IF EXISTS `sala`;
CREATE TABLE `sala` (
  `idSala` int(11) NOT NULL AUTO_INCREMENT,
  `sala` int(11) NOT NULL,
  `cupo` int(11) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`idSala`),
  UNIQUE KEY `idsala_UNIQUE` (`idSala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sala
-- ----------------------------

-- ----------------------------
-- Table structure for tabla
-- ----------------------------
DROP TABLE IF EXISTS `tabla`;
CREATE TABLE `tabla` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tabla
-- ----------------------------

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(400) NOT NULL,
  `idRol` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idusuariio_UNIQUE` (`idUsuario`),
  KEY `fk_usuariio_rol_idx` (`idRol`),
  CONSTRAINT `fk_usuariio_rol` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuario
-- ----------------------------

-- ----------------------------
-- Table structure for usuariosala
-- ----------------------------
DROP TABLE IF EXISTS `usuariosala`;
CREATE TABLE `usuariosala` (
  `idUsuarioSala` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `idsala` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`idUsuarioSala`),
  KEY `fk_usuario_sala_sala1_idx` (`idsala`),
  KEY `fk_usuario_sala_usuariio1_idx` (`idusuario`),
  CONSTRAINT `fk_usuario_sala_sala1` FOREIGN KEY (`idsala`) REFERENCES `sala` (`idSala`),
  CONSTRAINT `fk_usuario_sala_usuariio1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuariosala
-- ----------------------------
