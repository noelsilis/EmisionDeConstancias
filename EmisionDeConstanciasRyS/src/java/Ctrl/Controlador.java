/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ctrl;

import Config.Conexion;
import Entidad.Usuario;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author EquipoRUTS_ITSOEH
 */
@Controller
public class Controlador {

    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    boolean tmp = false, tmp2 = true, tmp3 = true;
    String mat;
    String no;
    List datos;
    int esp;

    @RequestMapping(value = "index.htm", method = RequestMethod.GET)
    public ModelAndView login() {
        tmp = false;
        mav.addObject(new Usuario());
        mav.setViewName("index");
        return mav;
    }

    @RequestMapping(value = "index.htm", method = RequestMethod.POST)
    public ModelAndView login(Usuario u) {
        String sql = "select * from alumnos where NoControl='" + u.getMatricula()
                + "' and Contraseña='" + u.getPass() + "'";
        mat = u.getMatricula();
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        tmp = false;
        boolean aux4 = false;
        if (datos.size() > 0) {
            tmp = true;
            sql = "select * from alumnos where Especialidad='X'";
            datos = this.jdbcTemplate.queryForList(sql);
            for (int i = 0; i < datos.size(); i++) {
                String aux = "" + datos.get(i);
                int aux2 = aux.indexOf(",");
                String aux3 = aux.substring(11, aux2);
                if (aux3.equals(mat)) {
                    aux4 = true;
                }
            }
            if (aux4) {
                sql = "select * from ruts.alumnos where Especialidad<>'X' group by Especialidad";
                datos = this.jdbcTemplate.queryForList(sql);
                int tamAr = datos.size() - 1;
                mav.addObject("listaEsp", datos);
                mav.addObject("tamEsp", tamAr);
                mav.setViewName("administrador");//cambiar a la de admin ****************
            } else {
                sql = "select*from tramites where NoControl=" + mat + " and tipoTramite like '%ervicio%'";
                datos = this.jdbcTemplate.queryForList(sql);
                int tamAr = datos.size() - 1;
                mav.addObject("listar", datos);
                mav.addObject("tamAr", tamAr);
                sql = "select*from tramites where NoControl=" + mat + " and tipoTramite like '%esidencia%'";
                datos = this.jdbcTemplate.queryForList(sql);
                tamAr = datos.size() - 1;
                mav.addObject("listar2", datos);
                mav.addObject("tamAr2", tamAr);
                mav.setViewName("inicio");
            }
        }
        return mav;
    }

    @RequestMapping("inicio.htm")
    public ModelAndView inicio() {
        if (datos.size() <= 0 || !tmp) {
            tmp = false;
            return new ModelAndView("redirect:/index.htm");
        }
        return mav;
    }

    @RequestMapping("menu_t_servicio.htm")
    public ModelAndView menu_t_servicio() {
        mav.setViewName("menu_t_servicio");
        return mav;
    }

    @RequestMapping("menu_t_residencia.htm")
    public ModelAndView menu_t_residencia() {
        mav.setViewName("menu_t_residencia");
        return mav;
    }

    @RequestMapping("datosAlumno.htm")
    public ModelAndView datosAlumno() {
        if (tmp2) {
            String sql = "select * from alumnos where NoControl<>'" + mat + "' order by Especialidad, NoControl";
            List datos = this.jdbcTemplate.queryForList(sql);
            int tamAr = datos.size() - 1;
            mav.addObject("listar", datos);
            mav.addObject("tamAr", tamAr);
            tmp2 = false;
        }
        mav.setViewName("datosAlumno");
        return mav;
    }

    @RequestMapping(value = "editarAlumno.htm", method = RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request) {
        no = request.getParameter("id");
        String sql = "select * from alumnos where NoControl='" + no + "'";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("tmp", datos);
        mav.setViewName("editarAlumno");
        return mav;
    }

    @RequestMapping(value = "editarAlumno.htm", method = RequestMethod.POST)
    public ModelAndView Editar(Usuario u) {
        String aux = "";
        int aux2 = u.getEspecialidad().indexOf("ELECTROME");
        if (aux2 >= 0) {
            aux = "INGENIERÍA ELECTROMECÁNICA";
        } else {
            aux2 = u.getEspecialidad().indexOf("EMPRESARIAL");
            if (aux2 >= 0) {
                if (aux2 >= 0) {
                    aux2 = u.getEspecialidad().indexOf("MIXTA");
                    aux = "INGENIERÍA EN GESTIÓN EMPRESARIAL MIXTA";
                } else {
                    aux = "INGENIERÍA EN GESTIÓN EMPRESARIAL";
                }
            } else {
                aux2 = u.getEspecialidad().indexOf("STICA");
                if (aux2 >= 0) {
                    aux = "INGENIERÍA EN LOGÍSTICA";
                } else {
                    aux2 = u.getEspecialidad().indexOf("COMPUTACIONALES");
                    if (aux2 >= 0) {
                        aux = "INGENIERÍA EN SISTEMAS COMPUTACIONALES";
                    } else {
                        aux2 = u.getEspecialidad().indexOf("DE LA INFORMACI");
                        if (aux2 >= 0) {
                            aux = "INGENIERÍA EN TECNOLOGÍAS DE LA INFORMACIÓN Y";
                        } else {
                            aux2 = u.getEspecialidad().indexOf("INDUSTRIAL");
                            if (aux2 >= 0) {
                                aux = "INGENIERÍA INDUSTRIAL";
                            }
                        }
                    }
                }
            }
        }
        String sql = "update alumnos set NoControl=?, Nombres=?, APaterno=?, "
                + "AMaterno=?, Especialidad=?, Email=? where NoControl=?";
        this.jdbcTemplate.update(sql, u.getMatricula(), u.getNombre(), u.getAPaterno(),
                u.getAMaterno(), aux, u.getEmail(), no);
        tmp2 = true;
        return new ModelAndView("redirect:/datosAlumno.htm");
    }

    @RequestMapping("adminServicio.htm")
    public ModelAndView adminServicio(HttpServletRequest request) {
        if (tmp3) {
            esp = Integer.parseInt(request.getParameter("sp"));
        }
        String aux = "";
        switch (esp) {
            case 0:
                aux = "ARQUITECTURA";
                break;
            case 1:
                aux = "INGENIERÍA ELECTROMECÁNICA";
                break;
            case 2:
                aux = "INGENIERÍA EN GESTIÓN EMPRESARIAL";
                break;
            case 3:
                aux = "INGENIERÍA EN GESTIÓN EMPRESARIAL MIXTA";
                break;
            case 4:
                aux = "INGENIERÍA EN INDUSTRIAS ALIMENTARIAS";
                break;
            case 5:
                aux = "INGENIERÍA EN LOGÍSTICA ";
                break;
            case 6:
                aux = "INGENIERÍA EN SISTEMAS COMPUTACIONALES";
                break;
            case 7:
                aux = "INGENIERÍA EN TECNOLOGÍAS DE LA INFORMACIÓN Y";
                break;
            case 8:
                aux = "INGENIERÍA INDUSTRIAL";
                break;
        }
        String sql = "SELECT t.* FROM tramites t join alumnos a on (t.NoControl=a.NoControl) where a.Especialidad='" + aux + "' and tipoTramite like '%ervicio%' order by NoControl";
        datos = this.jdbcTemplate.queryForList(sql);
        int tamAr = datos.size() - 1;
        mav.addObject("tmp", datos);
        mav.addObject("tamTra", tamAr);
        mav.setViewName("adminServicio");
        return mav;
    }

    @RequestMapping("adminResiden.htm")
    public ModelAndView adminResiden(HttpServletRequest request) {
        if (tmp3) {
            esp = Integer.parseInt(request.getParameter("sp"));
        }
        String aux = "";
        switch (esp) {
            case 0:
                aux = "ARQUITECTURA";
                break;
            case 1:
                aux = "INGENIERÍA ELECTROMECÁNICA";
                break;
            case 2:
                aux = "INGENIERÍA EN GESTIÓN EMPRESARIAL";
                break;
            case 3:
                aux = "INGENIERÍA EN GESTIÓN EMPRESARIAL MIXTA";
                break;
            case 4:
                aux = "INGENIERÍA EN INDUSTRIAS ALIMENTARIAS";
                break;
            case 5:
                aux = "INGENIERÍA EN LOGÍSTICA ";
                break;
            case 6:
                aux = "INGENIERÍA EN SISTEMAS COMPUTACIONALES";
                break;
            case 7:
                aux = "INGENIERÍA EN TECNOLOGÍAS DE LA INFORMACIÓN Y";
                break;
            case 8:
                aux = "INGENIERÍA INDUSTRIAL";
                break;
        }
        String sql = "SELECT t.* FROM tramites t join alumnos a on (t.NoControl=a.NoControl) where a.Especialidad='" + aux + "' and tipoTramite like '%esidencia%' order by NoControl";
        datos = this.jdbcTemplate.queryForList(sql);
        int tamAr = datos.size() - 1;
        mav.addObject("tmp", datos);
        mav.addObject("tamTra", tamAr);
        mav.setViewName("adminResiden");
        return mav;
    }

    @RequestMapping("especialidadesTramitesSS.htm")
    public ModelAndView especialidadesTramitesSS() {
        mav.setViewName("especialidadesTramitesSS");
        tmp3 = true;
        return mav;
    }

    @RequestMapping("especialidadesTramitesRP.htm")
    public ModelAndView especialidadesTramitesRP() {
        mav.setViewName("especialidadesTramitesRP");
        tmp3 = true;
        return mav;
    }

    @RequestMapping("delete.htm")
    public ModelAndView Delete(HttpServletRequest request) {
        no = request.getParameter("id");
        String sql = "delete from alumnos where NoControl='" + no + "'";
        this.jdbcTemplate.update(sql);
        tmp2 = true;
        return new ModelAndView("redirect:/datosAlumno.htm");
    }

    @RequestMapping("borrarS.htm")
    public ModelAndView borrarS(HttpServletRequest request) {
        no = request.getParameter("id");
        String sql = "delete from tramites where idtramites=" + no;
        System.out.println("sql");
        this.jdbcTemplate.update(sql);
        tmp3 = false;
        return new ModelAndView("redirect:/adminServicio.htm");
    }

    @RequestMapping("borrarR.htm")
    public ModelAndView borrarR(HttpServletRequest request) {
        no = request.getParameter("id");
        String sql = "delete from tramites where idtramites=" + no;
        this.jdbcTemplate.update(sql);
        tmp3 = false;
        return new ModelAndView("redirect:/adminResiden.htm");
    }

    @RequestMapping(value = "configuracion.htm", method = RequestMethod.GET)
    public ModelAndView configuracion() {
        mav.addObject(new Usuario());
        mav.setViewName("configuracion");
        return mav;
    }

    @RequestMapping(value = "configuracion.htm", method = RequestMethod.POST)
    public ModelAndView configuracion(Usuario u, HttpServletRequest request) {
        String sql;
        if (u.getX()!=null && u.getY()!=null) {
            sql = "update alumnos set NoControl=?, Contraseña=? where NoControl=?";
            this.jdbcTemplate.update(sql, u.getX(), u.getY(), mat);
        }
        if (u.getMatricula()!=null && u.getPass()!=null && u.getNombre()!=null && u.getAPaterno()!=null && u.getAMaterno()!=null) {
            sql = "insert into alumnos(NoControl, Contraseña, Nombres, APaterno, AMaterno, Especialidad)values(?,?,?,?,?,?)";
            this.jdbcTemplate.update(sql, u.getMatricula(), u.getPass(), u.getNombre(), u.getAPaterno(), u.getAMaterno(), "X");
        }
        mat = u.getX();
        return new ModelAndView("redirect:/configuracion.htm");
    }
}
//"select * from alumnos where NoControl='" + u.getMatricula() + "' and Contraseña='" + u.getPass() + "'";
//"select*from tramites where NoControl=" + mat + " and tipoTramite like '%ervicio%'";
//"select*from tramites where NoControl=" + mat + " and tipoTramite like '%esidencia%'";
