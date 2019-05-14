namespace java com.swoole.protocol.demo
namespace php Swooless.Protocol.Demo

const string SERVER_NAME = "swoole.protocol.demo";

// 异常定义
exception NotFoundException {
    1: optional string message;
}

exception NotUniqueException {
    1: optional string message;
}

// enum 定义
enum Type {
    A     = 200,
    B     = 220,
}

struct User {
    1: optional string name;
    2: optional i32 age;
    3: optional Type role;
}

// 服务定义
service Server {
    string version();
    bool add(1: User user);
    User get(1: string name)  throws (1: NotFoundException notFound, 2: NotUniqueException notUnique);
}
