package service.myinterface;

import java.util.List;

public interface ISearch <E>{
    public List<E> selectName(String value);
    public E selectById(int id);
}
