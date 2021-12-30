#import "Basic";
#import "JaiProfiler";

main :: ()
{
    profiler_begin_session("init", tprint("%init.json", #filepath));

    init_program();

    profiler_end_session();
}

init_program :: ()
{
    PROFILE_FUNCTION();

    nice_message := "Hello Sailor!";
    log(nice_message);

    {
        PROFILE_SCOPE("for loop");
        for 0..10
        {
            if it % 2 == 0
            {
                log("% is even!", it);
            }
            else
            {
                log("% is odd!", it);
            }
        }
    }
}