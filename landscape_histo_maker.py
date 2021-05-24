import sys

raw_data = [i.strip('\n') for i in open(sys.argv[1]).readlines()]

data = []

for line in raw_data:
        time = float(line.split(',')[0])
        day = int(float(line.split(',')[0]))
        fitness  = [int(i.split('-')[0]) for i in line.split(',')[1:]]
        frequencies  = [int(i.split('-')[1]) for i in line.split(',')[1:]]
        data.append([day,time,fitness,frequencies])

days = [{} for i in range(data[-1][0]+2)]

for line in data:
        for f in range(len(line[2])):
                if line[2][f] in days[line[0]].keys():
                        days[line[0]][line[2][f]].append(line[3][f])
                else:
                        days[line[0]][line[2][f]]=[line[3][f]]

hists = [[0 for i in range(max(data[0][2])+1)] for d in range(data[-1][0]+2)]

for day in range(len(days)):
        for fitness in days[day].keys():
                hists[day][fitness]=sum(days[day][fitness])/(1.0*len(days[day][fitness])) 

f=open('averaged_by_day_landscapes','w')
for fitness in range(len(hists[0])):
        f.write(','.join([str(hists[day][fitness]) for day in range(data[-1][0])])+'\n')

f.close()
        
f=open('averaged_by_day_landscapes_normed','w')
for fitness in range(len(hists[0])):
        f.write(','.join([str(hists[day][fitness]/(1.0*sum(hists[day]))) for day in range(data[-1][0])])+'\n')

f.close()


data = []

for line in raw_data:
        time = float(line.split(',')[0])
        day = int(float(line.split(',')[0]))//10
        fitness  = [int(i.split('-')[0]) for i in line.split(',')[1:]]
        frequencies  = [int(i.split('-')[1]) for i in line.split(',')[1:]]
        data.append([day,time,fitness,frequencies])

days = [{} for i in range(data[-1][0]+2)]

for line in data:
        for f in range(len(line[2])):
                if line[2][f] in days[line[0]].keys():
                        days[line[0]][line[2][f]].append(line[3][f])
                else:
                        days[line[0]][line[2][f]]=[line[3][f]]

hists = [[0 for i in range(max(data[0][2])+1)] for d in range(data[-1][0]+2)]

for day in range(len(days)):
        for fitness in days[day].keys():
                hists[day][fitness]=sum(days[day][fitness])/(1.0*len(days[day][fitness]))

f=open('averaged_by_10_day_landscapes','w')
for fitness in range(len(hists[0])):
        f.write(','.join([str(hists[day][fitness]) for day in range(data[-1][0])])+'\n')

f.close()

f=open('averaged_by_10_day_landscapes_normed','w')
for fitness in range(len(hists[0])):
        f.write(','.join([str(hists[day][fitness]/(1.0*sum(hists[day]))) for day in range(data[-1][0])])+'\n')

f.close()
