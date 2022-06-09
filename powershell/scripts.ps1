#Mostra o atributos do servico de audio do Windows em um computador especifico
Get-Service -Name "AudioSrv" -ComputerName "DTI11026" 

#Pega os atributos do servico de audio do Windows e insere em uma variavel
$servico = Get-Service -Name "AudioSrv" -ComputerName "DTI11026" 
#Pega somente o status do servico
$servico.Status
#Se o servico estiver em execucao, para o servico e depois inicia o servico
if ($servico.Status -eq "Running"){
    $servico.Stop()
    $servico.Start()
#Se o servico nao estiver em execucao, imprime na tela a mensagem abaixo
} else {
    echo "Servico nao estava executando"
}

#Mostra na tela o conteudo da variavel de ambiente path
echo $env:Path

#Mostra na tela o tipo de dado da variavel path
echo $env:Path.GetType()

#Mostra na tela o conteudo da variavel path e mostra cada caminho numa linha
#Sempre que encontrar um ; ele realiza quebra de linha
echo $env:Path.Split(';')

echo $env:Path | Get-Member

#Exibe os apelidos dos comandos existentes
Get-Alias

#Exibe os parametros do alias dir
Get-Alias -name dir

Get-command -name Rename-Item

#Exibe a ajuda de um determinado comando
Get-Help -name Rename-Item

#Atualiza a biblioteca de ajuda do powershell
Update-Help

#Cria o apelido rename para o comando Rename-Item
New-Alias -Name "rename" Rename-Item

#Exibe os parametros do alias rename
Get-Alias -name rename

#Exibe a ajuda de um determinado comando
get-help -name get-verb

#Cria o apelido g_v para o comando Get-Verb
New-Alias -name g_v Get-Verb

#Exibe os parametros do alias g_v
Get-Alias -name g_v

#Exibe a ajuda de dos comandos que possuam alias no nome
get-help -name *Alias*

#Renomeia um arquivo
rename "C:\Users\FagnerB\OneDrive - crfsp.org.br\Git\alura\powershell\scripts\ad.bat" "C:\Users\FagnerB\OneDrive - crfsp.org.br\Git\alura\powershell\scripts\migrando_ad_fagner.bat"

#Exibe o perfil corrente da sessao atual
$profile

#Cria o seguinte arquivo C:\Users\FagnerB\Documents\WindowsPowerShell\Microsoft.PowerShellISE_profile.ps1
new-item $profile

#Motra a politica de execucao atual
Get-ExecutionPolicy

#Motra a politica de execucao atual
Set-ExecutionPolicy unrestricted

#Ajuda
get-help about_Profiles

#Mostra onde fica salvo o perfil AllUsersAllHosts
#C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1
$PROFILE.AllUsersAllHosts

#Cria o arquivo C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1 para AllUsersAllHosts
New-Item $PROFILE.AllUsersAllHosts


#Lista todos os arquivos e pastas de forma recursiva
$todosOsItens = gci -Recurse
#Exibe a quantidade de arquivos e pastas existentes
$todosOsItens.Length

#Lista todos os arquivos forma recursiva
$todosOsArquivos = gci -Recurse -File
#Exibe a quantidade de arquivos existentes
$todosOsItens.Length
$todosOsArquivos.Length

gci -Recurse -File | Select-Object Name | Where-Object { $_ -like "*migrando*" } | Select-object Size

gci -Recurse -File | Where-Object Name -like "*migrando*" | Select-Object Name, Length

(5445644654 / 1GB).GetType().Name

(5445644654 / 1GB).ToString("N2") + "GB"

"{0:N2}GB" -f (5445644654 / 1GB)


gci -Recurse -File | Where-Object Name -like "*migrando*" | Select-Object Name, { $_.Length / 1KB }
gci -Recurse -File | Where-Object Name -like "*migrando*" | Select-Object Name, { "{0:N2}KB" -f $_.Length / 1KB }