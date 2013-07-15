package com.merlin.data.managers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.merlin.data.DataBase;
import com.merlin.data.dto.MensagemDTO;

public class MensagemManager {

    public boolean update(MensagemDTO pb) {
        boolean ok = true;
        Connection con = DataBase.getConnection();
        try {
            String qry = "update mensagens set " + "textomensagem=? " + "where codigomensagem=? ";
            PreparedStatement st = con.prepareStatement(qry);
            st.setString(1, pb.getTextoMensagem());
            st.setInt(2, pb.getCodigoMensagem().intValue());

            int retorno = st.executeUpdate();
            if (retorno < 1) {
                ok = false;
            }

        } catch (SQLException e) {
            ok = false;
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
            }
        }

        return ok;
    }

    public boolean insert(MensagemDTO pb) {
        boolean ok = true;
        Connection con = DataBase.getConnection();
        try {
            String qry = "insert into mensagens (codigomensagem, textomensagem) " + "values (?,?)";
            PreparedStatement st = con.prepareStatement(qry);
            st.setInt(1, pb.getCodigoMensagem().intValue());
            st.setString(2, pb.getTextoMensagem());

            int retorno = st.executeUpdate();
            if (retorno < 1) {
                ok = false;
            }

        } catch (SQLException e) {
            ok = false;
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
            }
        }
        return ok;
    }

    public List select(Object filtro) {
        Connection con = DataBase.getConnection();
        List retorno = new ArrayList();
        String qry;
        PreparedStatement st;
        try {
            if (filtro instanceof String) {
                qry = "select * from mensagens where textomensagem like ? order by codigomensagem";
                st = con.prepareStatement(qry);
                st.setString(1, filtro + "%");
            } else if (filtro instanceof Integer) {
                qry = "select * from mensagens where codigomensagem = ?  order by codigomensagem";
                st = con.prepareStatement(qry);
                st.setInt(1, ((Integer) filtro).intValue());
            } else {
                return null;
            }

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                MensagemDTO pb = new MensagemDTO();
                pb.setCodigoMensagem(new Integer(rs.getInt("codigomensagem")));
                pb.setTextoMensagem(rs.getString("textomensagem"));
                retorno.add(pb);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
            }
        }
        return retorno;
    }

    public List select(String filtro) {
        return select((Object) filtro);
    }

    public MensagemDTO select(int filtro) {
        List lista = select(new Integer(filtro));
        if (lista.size() > 0) {
            return (MensagemDTO) lista.get(0);
        } else {
            return null;
        }
    }

    public boolean delete(MensagemDTO pb) {
        boolean ok = true;
        Connection con = DataBase.getConnection();
        try {
            String qry = "delete from mensagens where codigomensagem = ?  ";
            PreparedStatement st = con.prepareStatement(qry);
            st.setInt(1, pb.getCodigoMensagem().intValue());
            int retorno = st.executeUpdate();
            if (retorno < 1) {
                ok = false;
            }

        } catch (SQLException e) {
            ok = false;
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
            }
        }
        return ok;
    }

    public MensagemDTO getNewBean() {
        MensagemDTO bean = new MensagemDTO();
        Connection con = DataBase.getConnection();
        List retorno = new ArrayList();
        int codigo = 0;
        try {
            String qry = "select max(codigomensagem) from mensagens ";
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(qry);
            if (rs.next()) {
                codigo = rs.getInt("codigomensagem");
            }

        } catch (SQLException e) {
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
            }
        }

        bean.setCodigoMensagem(new Integer(codigo + 1));
        return bean;
    }
}
