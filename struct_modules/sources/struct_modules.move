module 0x0::bullish{
    use std::string::String;

    /*
    public struct <NameStruct> optional: abilities = copy, drop, store, key {
        <attribute_name>: <type_of_attr>,
        <attribute_name>: <type_of_attr>
    }
    */

    public struct Student has key {
        id: UID,
        name: String,
        score: u8
    }

    // basically the algorithm for minting(create)
    public fun instantiate_struct(ctx: &mut TxContext): Student {
        // instantiate struct
        let new_student = Student {
            id: object::new(ctx),
            name: b"Delan".to_string(),
            score: 80
        };
        new_student
    }

    // basically the algorithm for burn(delete)
    public fun call_instantiate_struct_function_and_delete(ctx: &mut TxContext) {
        let get_student = instantiate_struct(ctx); // call the instantiate_struct
        // Destructuring of student object
        let Student {id: id, name: _, score: _} = get_student;
        object::delete(id);
    }
}

module 0x0::bearish{

}

module 0x0::oddly{
    
}