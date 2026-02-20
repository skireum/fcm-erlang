PROJECT = fcm
PROJECT_VERSION = $(shell head -n 1 relx.config | awk '{split($$0, a, "\""); print a[2]}')

app:: rebar.config

DEPS = jsx google_oauth

dep_jsx = git https://github.com/talentdeficit/jsx.git v3.0.0
dep_google_oauth = git https://github.com/skireum/google_oauth_erlang.git master

include $(if $(ERLANG_MK_FILENAME),$(ERLANG_MK_FILENAME),erlang.mk)

ERLC_OPTS += $(ERLC_COMPILE_OPTS)
TEST_ERLC_OPTS += $(ERLC_COMPILE_OPTS)
