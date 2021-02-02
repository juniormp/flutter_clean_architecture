abstract class ILocalStorage {
  Future gets(String key);
  Future delete(String key);
  Future put(String key, dynamic value);
}
