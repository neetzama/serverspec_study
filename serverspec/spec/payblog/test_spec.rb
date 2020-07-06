require 'spec_helper'

describe port(22) do
  it { should be_listening.with('tcp') }
end

describe port(80) do
  it { should be_listening.with('tcp') }
end

describe port(443) do
  it { should be_listening.with('tcp') }
end

describe port(5432) do
  it { should be_listening.with('tcp') }
end

# nginx テスト
describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

# nginx　設定ファイル
describe file('/etc/nginx/sites-enabled/config') do
  it { should be_executable }
end

# gunicorn テスト
describe service('gunicorn') do
  it { should be_enabled }
  it { should be_running }
end

# gunicorn 自動起動設定ファイル
describe file('/etc/systemd/system/gunicorn.service') do
  it { should be_executable }
end

# postgresql テスト
describe service('postgresql') do
  it { should be_enabled }
  it { should be_running }
end

# アプリテスト
describe file('/home/ubuntu/payblog') do
  it { should be_directory }
  it { should be_executable }
end

# ログファイル・ディレクトリテスト
describe file('/var/log/nginx') do
  it { should be_directory }
end

describe file('/var/log/postgresql') do
  it { should be_directory }
end

describe file('/var/log/btmp') do
  it { should be_file }
end

describe file('/var/log/wtmp') do
  it { should be_file }
end

# バックアップディレクトリ
describe file('/var/backups') do
  it { should be_directory }
end