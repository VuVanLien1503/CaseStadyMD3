package DAO.product;

import model.product.Book;
import service.ICrud;
import service.MyConnection;

import java.util.List;

public class BookDAO implements ICrud<Book> {
    MyConnection connection;
    public BookDAO( MyConnection connection) {
        this.connection=connection;
    }


    @Override
    public List<Book> selectAll() {
        return null;
    }

    @Override
    public void insert(Book book) {

    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    @Override
    public boolean update(Book book) {
        return false;
    }
}
