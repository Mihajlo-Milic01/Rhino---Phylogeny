# m_matschiner Fri Jul 25 03:16:29 PM CEST 2025

# Set the account.
acct=nn9883k

# Make the log directory.
mkdir -p ../log/

# Set the log files.
log_out=../log/rhino_slurm.out
log_err=../log/rhino_slurm.err
rm -f ${log_out}
rm -f ${log_err}

# Set the revbayes script.
rb_script=mcmc_CEFBDRP_Ranges_rhinos.Rev

# Launch revbayes job.
sbatch -A ${acct} -o ${log_out} -e ${log_err} run_on_saga.slurm ${rb_script}
