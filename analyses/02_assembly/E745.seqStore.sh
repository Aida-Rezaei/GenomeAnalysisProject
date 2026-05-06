#!/bin/sh


#  Paths to things we run.

bin="/sw/arch/eb/software/canu/2.3-GCCcore-13.3.0-Java-17/bin"

pn=/sw/arch/eb/software/Perl/5.38.2-GCCcore-13.3.0/bin/perl
pe=`command -v $pn`
pv=`command    $pn --version | grep version`

jn=/sw/arch/eb/software/Java/17.0.15/bin/java
je=`command -v $jn`
jv=`command    $jn -showversion 2>&1 | head -n 1`

cn=/sw/arch/eb/software/canu/2.3-GCCcore-13.3.0-Java-17/bin/canu
ce=`command -v $cn`
cv=`command    $cn -version`

#  Report paths.

echo ""
echo "Found perl (from '$pn'):"
echo "  $pe"
echo "  $pv"
echo ""
echo "Found java (from '$jn'):"
echo "  $je"
echo "  $jv"
echo ""
echo "Found canu (from '$cn'):"
echo "  $ce"
echo "  $cv"
echo ""

#  Environment for any object storage.

export CANU_OBJECT_STORE_CLIENT=
export CANU_OBJECT_STORE_CLIENT_UA=
export CANU_OBJECT_STORE_CLIENT_DA=
export CANU_OBJECT_STORE_NAMESPACE=
export CANU_OBJECT_STORE_PROJECT=




/sw/arch/eb/software/canu/2.3-GCCcore-13.3.0-Java-17/bin/sqStoreCreate \
  -o ./E745.seqStore.BUILDING \
  -minlength 1000 \
  -genomesize 2770000 \
  -coverage   200 \
  -bias       0 \
  -raw -pacbio m131023_233432_42174_c100519312550000001823081209281335_s1_X0.1.subreads /gorilla/home/aida82/genome_project/1_Zhang_2017/genomics_data/PacBio/m131023_233432_42174_c100519312550000001823081209281335_s1_X0.1.subreads.fastq.gz \
  -raw -pacbio m131023_233432_42174_c100519312550000001823081209281335_s1_X0.2.subreads /gorilla/home/aida82/genome_project/1_Zhang_2017/genomics_data/PacBio/m131023_233432_42174_c100519312550000001823081209281335_s1_X0.2.subreads.fastq.gz \
  -raw -pacbio m131023_233432_42174_c100519312550000001823081209281335_s1_X0.3.subreads /gorilla/home/aida82/genome_project/1_Zhang_2017/genomics_data/PacBio/m131023_233432_42174_c100519312550000001823081209281335_s1_X0.3.subreads.fastq.gz \
  -raw -pacbio m131024_200535_42174_c100563672550000001823084212221342_s1_p0.1.subreads /gorilla/home/aida82/genome_project/1_Zhang_2017/genomics_data/PacBio/m131024_200535_42174_c100563672550000001823084212221342_s1_p0.1.subreads.fastq.gz \
  -raw -pacbio m131024_200535_42174_c100563672550000001823084212221342_s1_p0.2.subreads /gorilla/home/aida82/genome_project/1_Zhang_2017/genomics_data/PacBio/m131024_200535_42174_c100563672550000001823084212221342_s1_p0.2.subreads.fastq.gz \
  -raw -pacbio m131024_200535_42174_c100563672550000001823084212221342_s1_p0.3.subreads /gorilla/home/aida82/genome_project/1_Zhang_2017/genomics_data/PacBio/m131024_200535_42174_c100563672550000001823084212221342_s1_p0.3.subreads.fastq.gz \
&& \
mv ./E745.seqStore.BUILDING ./E745.seqStore \
&& \
exit 0

exit 1
