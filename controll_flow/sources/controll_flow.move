/*
/// Module: controll_flow
module controll_flow::controll_flow;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions


#[allow(unused)]
module 0x0::xyz {


    use std::debug::print;
    use std::string::String;



    fun append_message_print(leave: String){
        let mut purchase = b"Buying ".to_string();
        // append leave name
        purchase.append(leave);
        print(&purchase);
    }

    #[test]
    fun go_to_church() {
        // if else
        let age = 20;
        // check if this person is an adult = 18 >
        if (age < 18) {
            print(&b"Under age".to_string())
        } else  {

            // print(&b"An adult".to_string())
        };
    
        let efo_in_the_market = b"Okazi".to_string();

        let list = vector<String>[
            b"ewedu".to_string(), b"shoko".to_string(),
            b"kola".to_string()
        ]; // ewedu has index of 0, shoko has index of 1, and kola has index of  2
        
        get_leave_in_market(list, efo_in_the_market)
    }

    fun get_leave_in_market(list: vector<String>, name_of_leave: String) {
        let mut i = 0;
        let mut purchase = b"Buying ".to_string();
        let mut leave_in_market = false;
        let mut leave_index = 0;

        // check if the leave is in the market
        while (i < list.length()){
            if (list[i] == name_of_leave) {
                leave_in_market = true;
                leave_index = i;
            };
            i = i + 1; // (i+=1 won't work) 
        };

        if (leave_in_market){
            append_message_print(list[leave_index]);
        } else {
            let mut complaint = b"Hey! There is ".to_string();
            complaint.append(name_of_leave);
            complaint.append(b" in the list! Please don't buy it".to_string());
            print(&complaint);
        }

    }

    #[test]
    fun break_continue() {
        let mut i = 0;
        while (i < 5) {
            if (i == 2) {
                break;
            };
            print(&i);
            i = i +1;
        }
    }
}