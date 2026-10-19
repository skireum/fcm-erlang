%% logging callbacks — OTP logger. The old logging library was dropped from
%% DEPS in 1.2.1.1 but these macros still called it: any ?ERROR_MSG (a dead
%% APNs token is enough) crashed the fcm gen_server with undef, and the crash
%% report printed its state, bearer token included.

-define(PRINT(Format, Args), io:format(Format, Args)).

-define(DEBUG(Format, Args), logger:debug(Format, Args)).

-define(INFO_MSG(Format, Args), logger:info(Format, Args)).

-define(WARNING_MSG(Format, Args), logger:warning(Format, Args)).

-define(ERROR_MSG(Format, Args), logger:error(Format, Args)).

-define(CRITICAL_MSG(Format, Args), logger:critical(Format, Args)).
