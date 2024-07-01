import styles from "./eu_sou_lindo.module.css"

function EuSouLindo(props) {
  return (
    <React.Fragment>
      Eu sou lindo
      <p className={styles.teste}>Nome: {props.pessoa.nome}</p>
      <p>Idade: {props.pessoa.idade}</p>

    </React.Fragment>
  );
}

EuSouLindo.propTypes = {
  greeting: PropTypes.string
};

export default EuSouLindo;
