import { Link } from "react-router-dom";
import { PaginaLegal } from "@/components/PaginaLegal";
import { CONTATO, NOME_SITE } from "@/config/site";

/**
 * Política de privacidade.
 *
 * Descreve o que o código faz hoje — cada item abaixo corresponde a uma tabela
 * ou serviço real. Se o site passar a coletar outra coisa (pagamento, e-mail
 * marketing, outro analytics), este texto muda junto, e a data também.
 */
const Privacidade = () => (
  <PaginaLegal
    titulo="Política de privacidade"
    descricao="Quais dados o Passar Concursos coleta, para que usa, com quem compartilha e como você pode excluí-los."
    caminho="/privacidade"
    atualizadoEm="16/11/2026"
  >
    <p>
      Esta página explica quais dados pessoais o {NOME_SITE} trata, para quê, e como você exerce seus direitos
      previstos na Lei Geral de Proteção de Dados (Lei nº 13.709/2018).
    </p>

    <h2>Resumo</h2>
    <ul>
      <li>Você pode consultar concursos, ler os guias e ver questões sem criar conta.</li>
      <li>Com conta, guardamos seu e-mail e o seu progresso de estudo, para mostrá-lo a você.</li>
      <li>Não vendemos dados, não exibimos anúncios e não usamos cookies de publicidade.</li>
      <li>Você pode apagar seus dados a qualquer momento em <Link to="/minha-conta">Minha Conta</Link>.</li>
    </ul>

    <h2>Dados que coletamos</h2>
    <p><strong>Dados de cadastro.</strong> Seu e-mail e uma senha, guardada de forma cifrada pelo serviço de
      autenticação. Se você entrar com o Google, recebemos o nome, o e-mail e a foto de perfil que o Google informa.</p>
    <p><strong>Dados de estudo.</strong> O que você produz ao usar o site com a conta: respostas e resultados de
      questões e simulados, progresso em flashcards, flashcards e anotações que você cria, ciclos, tópicos de
      edital, revisões e eventos do planner, pontos e conquistas.</p>
    <p><strong>Interesse em recursos pagos.</strong> Se você preencher o formulário de interesse no gerador de
      plano de estudos, guardamos o e-mail informado e, se você quiser informar, WhatsApp, concurso de interesse e
      mensagem. Usamos esses dados só para avisar você quando o recurso estiver disponível.</p>
    <p><strong>Dados de navegação.</strong> Medimos a audiência com o Vercel Web Analytics, que registra páginas
      visitadas, origem do acesso, tipo de dispositivo e país de forma agregada, sem cookies e sem identificar
      você individualmente.</p>

    <h2>Para que usamos</h2>
    <ul>
      <li>Criar e manter sua conta e permitir o login (execução do serviço que você pediu).</li>
      <li>Guardar e mostrar seu progresso de estudo (execução do serviço).</li>
      <li>Entender quais páginas são usadas e melhorar o site (legítimo interesse, com dados agregados).</li>
      <li>Avisar sobre recursos em que você registrou interesse (seu consentimento, dado ao enviar o formulário).</li>
    </ul>

    <h2>Com quem compartilhamos</h2>
    <p>Apenas com os serviços que fazem o site funcionar, que tratam os dados em nosso nome:</p>
    <ul>
      <li><strong>Neon</strong>: banco de dados e autenticação, com servidores na região de São Paulo.</li>
      <li><strong>Vercel</strong>: hospedagem do site e medição de audiência.</li>
      <li><strong>Google</strong>: somente se você escolher entrar com a conta Google.</li>
    </ul>
    <p>Esses serviços podem processar dados fora do Brasil. Não compartilhamos seus dados com anunciantes nem
      com outros usuários: seu progresso, suas anotações e os flashcards que você cria são visíveis só para você.</p>

    <h2>Cookies e armazenamento local</h2>
    <p>Usamos apenas o necessário para o site funcionar: o armazenamento que mantém você conectado e a sua
      preferência de tema claro ou escuro. Não há cookies de publicidade nem de rastreamento entre sites.</p>

    <h2>Por quanto tempo guardamos</h2>
    <p>Enquanto sua conta existir. Ao excluir a conta, seus dados de estudo são apagados imediatamente e o seu
      cadastro de login é removido em seguida.</p>

    <h2>Seus direitos</h2>
    <p>Você pode confirmar se tratamos seus dados, acessá-los, corrigi-los, pedir a exclusão, revogar o
      consentimento e pedir a portabilidade. Para excluir tudo, use o botão "Excluir minha conta" em{" "}
      <Link to="/minha-conta">Minha Conta</Link>. Para os demais pedidos, use a{" "}
      <a href={CONTATO.url} target="_blank" rel="noopener noreferrer">{CONTATO.rotulo}</a>. Esse canal é público:
      não escreva nele dados pessoais além do necessário para identificarmos o pedido.</p>

    <h2>Segurança</h2>
    <p>O acesso ao banco de dados é restrito por usuário: cada conta só lê e altera os próprios registros. A
      conexão com o site é sempre cifrada (HTTPS). Nenhum sistema é infalível; se houver incidente que possa causar
      risco relevante a você, avisaremos.</p>

    <h2>Mudanças nesta política</h2>
    <p>Se o site passar a tratar dados de outra forma, esta página será atualizada e a data no topo mudará.</p>
  </PaginaLegal>
);

export default Privacidade;
