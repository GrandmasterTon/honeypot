# Copyright 2023 Cartesi Pte. Ltd.
#
# SPDX-License-Identifier: Apache-2.0
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use
# this file except in compliance with the License. You may obtain a copy of the
# License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.

CXX  := riscv64-cartesi-linux-gnu-g++

.PHONY: clean

honeypot: honeypot.cpp
	$(CXX) -std=c++17 -Wall -Werror \
		-Iboost_1_73_0 \
		-Iconfig/$(NETWORK) \
		-o $@ $^

clean:
	@rm -rf honeypot
