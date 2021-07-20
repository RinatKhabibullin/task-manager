import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles(() => ({
  root: {
    display: 'flex',
    flexDirection: 'column',
  },
  preview: {
    maxWidth: '100%',
    display: 'block',
  },
}));

export default useStyles;
