import sys

raw_data = [[i.strip('\n').strip('\r').split(',') for i in open(filename,'r').readlines()[1:]] for filename in sys.argv[1:]]

bin_width=0.1

simulation_length = 100

cell_data =[[] for i in range(int(simulation_length/bin_width))]
inf_data =[[] for i in range(int(simulation_length/bin_width))]
vir_data =[[] for i in range(int(simulation_length/bin_width))]
imm_data =[[] for i in range(int(simulation_length/bin_width))]

for data in raw_data:
    for i in data:
        cell_data[int(float(i[0])/bin_width)].append(int(i[1]))
        inf_data[int(float(i[0])/bin_width)].append(int(i[2]))
        vir_data[int(float(i[0])/bin_width)].append(int(i[3]))
        imm_data[int(float(i[0])/bin_width)].append(int(i[4]))

f=open('averaged_population','w')
f.write('time,ncell,ninf,nvir,nimm\n')
for i in range(len(cell_data)):
    f.write(str((i+1)*bin_width)+','+str(sum(cell_data[i])/(1.0*len(cell_data[i])))+','+str(sum(inf_data[i])/(1.0*len(inf_data[i])))+','+str(sum(vir_data[i])/(1.0*len(vir_data[i])))+','+str(sum(imm_data[i])/(1.0*len(imm_data[i])))+'\n')
f.close()
