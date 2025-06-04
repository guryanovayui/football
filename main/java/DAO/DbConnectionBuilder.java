package DAO;

import java.sql.Connection;
import java.sql.ConnectionBuilder;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ShardingKey;
/**
* Класс Построителя соединения с базой данных
*/
public class DbConnectionBuilder implements ConnectionBuilder {
public DbConnectionBuilder() {
try {
// Настройка драйвера базы данных
Class.forName(ConnectionProperty.getProperty("db.driver.class"));
} catch (ClassNotFoundException ex) {
ex.printStackTrace();
}
}
// Получение соединения с базой данных
public Connection getConnection() throws SQLException {
String url = ConnectionProperty.getProperty("db.url");
String login = ConnectionProperty.getProperty("db.login");
String password =
ConnectionProperty.getProperty("db.password");
return DriverManager.getConnection(url, login, password);
}
@Override
public ConnectionBuilder user(String username) {
	// TODO Auto-generated method stub
	return null;
}
@Override
public ConnectionBuilder password(String password) {
	// TODO Auto-generated method stub
	return null;
}
@Override
public ConnectionBuilder shardingKey(ShardingKey shardingKey) {
	// TODO Auto-generated method stub
	return null;
}
@Override
public ConnectionBuilder superShardingKey(ShardingKey superShardingKey) {
	// TODO Auto-generated method stub
	return null;
}
@Override
public Connection build() throws SQLException {
	// TODO Auto-generated method stub
	return null;
}
}
