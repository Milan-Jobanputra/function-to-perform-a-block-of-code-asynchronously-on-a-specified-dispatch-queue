dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    // Perform some background task
    
    // Once the background task is complete, switch back to the main queue
    dispatch_async(dispatch_get_main_queue(), ^{
        // Code to be executed on the main queue after the background task is complete
    });
});

