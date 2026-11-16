import { Link } from "react-router-dom";
import { PaginaLegal } from "@/components/PaginaLegal";
import { CONTATO, NOME_SITE } from "@/config/site";

const Termos = () => (
  <PaginaLegal
    titulo="Termos de uso"
    descricao="Regras de uso do Passar Concursos: o que o site oferece, o que esperar dos dados de concursos e as responsabilidades de quem usa."
    caminho="/termos"
    atualizadoEm="16/11/2026"
  >
    <p>Ao usar o {NOME_SITE}, você concorda com as regras abaixo. Se não concordar, não use o site.</p>

    <h2>O que o site oferece</h2>
    <p>Uma lista de concursos públicos com inscrições abertas, questões por matéria, flashcards, planner de
      estudos, anotações e guias sobre como se preparar. O uso é gratuito. Parte dos recursos exige uma conta,
      também gratuita.</p>

    <h2>Dados de concursos</h2>
    <p>As informações de concursos (órgão, vagas, remuneração, escolaridade e prazo de inscrição) são coletadas
      automaticamente de fonte pública, uma vez por semana, e podem estar incompletas, desatualizadas ou erradas.{" "}
      <strong>O edital original prevalece sempre.</strong> Confira o edital e o site da banca antes de se inscrever
      ou tomar qualquer decisão. O {NOME_SITE} não é o órgão nem a banca organizadora e não recebe inscrições.</p>

    <h2>Conteúdo de estudo</h2>
    <p>Questões, flashcards e guias são material de apoio. Eles não substituem a legislação, o edital nem
      orientação profissional, e não garantem aprovação.</p>

    <h2>Sua conta</h2>
    <ul>
      <li>Informe um e-mail seu e mantenha a senha em sigilo. Você responde pelo que for feito com a sua conta.</li>
      <li>Você pode excluir a conta quando quiser, em <Link to="/minha-conta">Minha Conta</Link>.</li>
      <li>Podemos suspender contas usadas para abuso do serviço.</li>
    </ul>

    <h2>O que você cria</h2>
    <p>Anotações e flashcards que você cria são seus e ficam visíveis só para você. Não cadastre conteúdo ilegal
      ou que viole direitos de terceiros.</p>

    <h2>Uso aceitável</h2>
    <ul>
      <li>Não tente acessar dados de outras pessoas nem burlar os controles de acesso.</li>
      <li>Não sobrecarregue o serviço com acessos automatizados em massa.</li>
      <li>Não use o site para enviar spam ou conteúdo malicioso.</li>
    </ul>

    <h2>Disponibilidade e responsabilidade</h2>
    <p>O site é oferecido como está, sem garantia de funcionamento contínuo. Recursos podem mudar ou sair do ar.
      Na medida permitida pela lei, não respondemos por perdas decorrentes de informação desatualizada sobre
      concursos, de indisponibilidade do serviço ou de perda de dados.</p>

    <h2>Privacidade</h2>
    <p>O tratamento de dados pessoais está descrito na <Link to="/privacidade">Política de privacidade</Link>.</p>

    <h2>Mudanças e contato</h2>
    <p>Estes termos podem ser atualizados; a data no topo indica a última revisão. Dúvidas: use a{" "}
      <a href={CONTATO.url} target="_blank" rel="noopener noreferrer">{CONTATO.rotulo}</a>. Aplica-se a lei
      brasileira.</p>
  </PaginaLegal>
);

export default Termos;
