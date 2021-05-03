# HTC_Condor_Resizing
Objetivos Este projeto tem como objetivo, instalar e configurar um cluster
de HTCondor com pelo menos 3 nós e utilizar o mesmo na resolução de uma
tarefa de processamento.
Descrição do projeto Pretende-se implementar um cluster HTCondor 1 para
a realização de tarefas de processamento de grandes volumes de dados ou de
elevada complexidade. Devem descrever qual o sistema que implementaram
assim como os serviços adicionais que utilizaram.
Como tarefa a realizar, para mostrar o funcionamento do cluster, idealizou-se
o desenvolvimento de uma aplicação de resizing de video. Esta aplicação deve,
por exemplo, dado um video com resolução fullHD (1080p) dar como resultado
um video com resolução SD (720p).
O objetivo é reduzir o tempo necessário à conversão do vídeo, por exemplo,
partindo o vídeo original em vários segmentos, fazer a conversão de cada um
dos segmentos e juntá-los todos para o vídeo de resultado.
Para as tarefas de manipulação dos vídeos sugere-se a utilização de ffmpeg.
A aplicação a desenvolver deve otimizar a utilização dos recursos disponíveis,
correndo tantos processos quantas as unidades de processamento disponíveis.
