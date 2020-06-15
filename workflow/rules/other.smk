# An example collection of Snakemake rules imported in the main Snakefile.

rule cat:
    input:
        file1="data/{sample}1",
        file2="data/{sample}2"
    output:
        "results/{sample}/cat"
    conda:
        "envs/myenv.yaml"
    shell:
        "cat {input.file1} {input.file2} > {output}"

