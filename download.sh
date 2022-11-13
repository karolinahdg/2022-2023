#wget -rkpN -e robots=off http://plany.zskocjan.pl/plan01_09a/

DIR=plany.zskocjan.pl/plan01_09a
PLANS="$DIR/scripts/plans.json"

echo "{\"index.html\":\"Start\"" > $PLANS;
for i in $DIR/plany/*html; do
    file=$(basename $i);
    title=$(grep "title" $i)

    echo ",\"${file}\":\"${title:7:-9}\"" >> $PLANS
done;
echo "}" >> $PLANS;