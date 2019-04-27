%% -*- erlang-indent-level: 4;indent-tabs-mode: nil -*-
%% --------------------------------------------------
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%% --------------------------------------------------
%%
%% @author Ulf Wiger <ulf@wiger.net>
%%
%% gproc.hrl: Common definitions

-define(TAB, gproc).


-ifdef(OTP_RELEASE). %% => OTP is 21 or higher
-define(EXCEPTION(Class, Reason, Stacktrace), Class:Reason:Stacktrace).
-define(STACKTRACE(Stacktrace), Stacktrace).
-else.
-define(EXCEPTION(Class, Reason, _), Class:Reason).
-define(STACKTRACE(_), erlang:get_stacktrace()).
-endif.
