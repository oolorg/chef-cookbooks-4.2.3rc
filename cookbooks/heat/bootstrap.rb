#
# Cookbook Name:: heat
# Recipe:: bootstrap
#
# Copyright (C) 2014 Okinawa OpenLabs
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# 

bash "install bootstrap" do
	code <<-EOH
		cd /tmp
		git clone https://github.com/ool-taku/ool-bootstrap.git
		cd ool-bootstrap/bootstrap
		tar xvzf package-ool-test.tar.gz
		cd package-ool-test
		./install.sh
	EOH
end
