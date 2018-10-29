// Completion blocks: for example, when you have some time consuming task, you want to be notified when that task is finished. You can use closures for that, instead of a delegate (or many other things)

func longAction(completion: () -> ()) {
    for index in veryLargeArray {
        // do something with veryLargeArray, which is extremely time-consuming 
    }
    completion() // notify the caller that the longAction is finished 
}

//Or asynch version

func longAction(completion: () -> ()) {

    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {

        for elem in veryLargeArray {
            // do something with veryLargeArray, which is extremely time-consuming
        }
        dispatch_async(dispatch_get_main_queue(), { 
            completion() // notify the caller that the longAction is finished 
        })
    }
}

longAction { print("work done") }