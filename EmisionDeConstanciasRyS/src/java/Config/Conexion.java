/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author EquipoRUTS_ITSOEH
 */
public class Conexion {
    public DriverManagerDataSource Conectar(){
        DriverManagerDataSource dataSource=new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://127.0.0.1:3308/ruts");
        dataSource.setUsername("root");
        dataSource.setPassword("");
        return dataSource;
    }
}
