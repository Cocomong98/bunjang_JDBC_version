package com.example.DAO;

import com.example.VO.ListVO;

import java.sql.*;
import java.util.ArrayList;

public class ListDAO {
    private static final String JDBC_URL = "jdbc:mysql://walab.handong.edu:3306/p2_21901015";
    private static final String JDBC_USER = "p2_21901015";
    private static final String JDBC_PASSWORD = "Moo1Aeyuak";
    private static final String M_LIST = "SELECT id, category, title, writer, content FROM bunjang";

    public void addProduct(String category, String title, String writer, String content) {
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String query = "INSERT INTO bunjang (category, title, writer, content) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, category);
            stmt.setString(2, title);
            stmt.setString(3, writer);
            stmt.setString(4, content);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<ListVO> listMember() {
        ArrayList<ListVO> list = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            PreparedStatement stmt = conn.prepareStatement(M_LIST);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                ListVO one = new ListVO();
                one.setId(rs.getInt("id"));
                one.setCategory(rs.getString("category"));
                one.setTitle(rs.getString("title"));
                one.setWriter(rs.getString("writer"));
                one.setContent(rs.getString("content"));
                list.add(one);
            }

            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }
    public ListVO getProductById(int id) {
        ListVO item = null;
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String query = "SELECT id, category, title, writer, content FROM bunjang WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                item = new ListVO();
                item.setId(rs.getInt("id"));
                item.setCategory(rs.getString("category"));
                item.setTitle(rs.getString("title"));
                item.setWriter(rs.getString("writer"));
                item.setContent(rs.getString("content"));
            }

            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return item;
    }

    public void updateProduct(int id, String category, String title, String writer, String content) {
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String query = "UPDATE bunjang SET category = ?, title = ?, writer = ?, content = ? WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, category);
            stmt.setString(2, title);
            stmt.setString(3, writer);
            stmt.setString(4, content);
            stmt.setInt(5, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteProduct(int id) {
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String query = "DELETE FROM bunjang WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
