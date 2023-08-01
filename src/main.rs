fn main() {
    let library_call_result = rust_library::add(100, 23);
    let serialized_num = serde_json::to_string(&library_call_result).unwrap();
    assert_eq!(serialized_num, "123");
    println!("Hello world from Anytree");
}
