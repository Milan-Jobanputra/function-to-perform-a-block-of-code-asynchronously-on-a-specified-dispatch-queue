# function-to-perform-a-block-of-code-asynchronously-on-a-specified-dispatch-queue
In Objective-C, you can use the dispatch_async function to perform a block of code asynchronously on a specified dispatch queue. If you want to execute a block of code after the completion of the asynchronous task on the main queue, you can use another dispatch_async call. Here's an example:


In this example:

The outer dispatch_async is used to perform a block of code asynchronously on a background queue (dispatch_get_global_queue).
Inside the background block, you perform the background task.
Once the background task is complete, the inner dispatch_async is used to switch back to the main queue (dispatch_get_main_queue()).
Inside the inner block, you put the code that you want to be executed on the main queue after the background task is complete.
This pattern is commonly used to update the user interface or perform other tasks that should run on the main thread after some background processing.
