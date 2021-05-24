#setup
import random
import math

#Initiation

iseed = 1234
random.seed(iseed)

nruns=5

for n in range(nruns):
        time = 0.0E0
        tout = 1.0E-6 #! time step for writeout
        tmax = 100.00E0 #! ending time

        iout = 1 #! - parameter for writeout
        dtime = 1.0E-6 #! - parameter for writeout

        nvl = 0  
        nvir = 10 #ng-nq  # - no. of virions outside cells 
        ninf = 10 # nq # - no. of infected cells
        nimm = 100 # - no. of immune cells (start)
        ncell = 100000 #5000 # - no. of uninfected cells (start)

        fitness = 2
        mutation_rate = 0.1
        width = 5

        v_in_cells = [fitness for i in range(ninf)]
         
        v_out_cells = [fitness for i in range(nvir)]

        cell_burst = False

        f=open('run_'+str(n+1)+'_populations_wt_fitness_'+str(fitness)+'_mut_rate_'+str(mutation_rate).replace('.','_')+'_width_'+str(width).replace('.','_'),'w')
        f.write(','.join([str('time'),str('ncell'),str('ninf'),str('nvir'),str('nimm')])+'\n')

        g=open('run_'+str(n+1)+'_landscape_wt_fitness_'+str(fitness)+'_mut_rate_'+str(mutation_rate).replace('.','_')+'_width_'+str(width).replace('.','_'),'w')


        beta = 2E-6  #!1.000d-5  !beta  - infectivity rate
        alph = 1.500E-2  #!7.495d-2  !alpha = p - removal infected cell by immune
        gamm = 1.000E-3 # !gamma = u - removal virus by immune

        pt =  1.0E4 # 5.05E6   #!3.30d5   !Pt = lam- pol target cell
        pe =  1.50E-4  #!2.50d-4  !Pe = c - pol immune from infected

        dt = 0.10E0   #!0.10d0   !Dt = d (1/day) - death target cell
        di = 0.50E0   #!0.50d0   !Di = a (1/day) - death infected cell  
        de = 0.10E0   #!0.10d0   !De = b (1/day) - death immune cell


#Start of simulation loop
        while ( time < tmax ):
            if ( nvir ==0 and ninf == 0):
                break 
#    print(ncell)
            #calculation of probablilities
            a=[0.0 for i in range(8)]

            #! rate of cell birth
            a[0] = pt
            #! rate of cell infection
            a[1] = beta * (ncell) * (nvir)
            #! rate of immune cell birth
            a[2] = pe * (nimm) * (ninf) 

            #! uninfected cell death
            a[3] = dt * (ncell)
            #! infected cell death
            a[4] = di * (ninf)
            #! immune cell death
            a[5] = de * (nimm) 
            #! infected cell removal by immune
            a[6] = alph * (nimm) * (ninf)
            #! virion removal by immune
            a[7] = gamm * (nimm) * (nvir) 
                      
            #sum the probabilities
            atot = 0.0
            for i in range(8):
                atot += a[i]

                

            #Compute Time Increment
            r=random.random()
            
            tau = math.log(1.0**0/r)
                       
            tau = tau / atot

            time = time + tau

            #Pick Reaction
            r=random.random()
            r = r * atot
            i = 0
            atot = 0.0



            while( atot < r):
                atot += a[i]
                i = i + 1
                


            i = i - 1 
            #THIS IS JUST ALL THE REACTIONS THAT CAN HAPPEN
            #Reproduce Target Cell
            if (i == 0):
                ncell = ncell +1
            #Infect Cell
            if (i == 1):
                ncell = ncell - 1
                ninf = ninf + 1
                nvir = nvir - 1
                Picked_virus = v_out_cells.pop(random.randint(0,nvir))
                v_in_cells.append(Picked_virus)

            #Reproduce Immune Cell        
            if ( i == 2 ):
                nimm = nimm + 1
                
            #Target Cell Death
            if ( i == 3 ):
                ncell = ncell - 1

            #Infected Cell death
            if ( i == 4):
                ninf = ninf - 1
                cell_burst = True
                Picked_virus = v_in_cells.pop(random.randint(0,ninf))
                nvir = nvir + Picked_virus
                v_out_cells.extend([Picked_virus for f1 in range(Picked_virus-int(Picked_virus*mutation_rate))]+
                        [min(Picked_virus-int(random.normalvariate(0,width)),fitness) for j in range(int(Picked_virus*mutation_rate))])
                
            #Immune Cell Death
            if ( i == 5):
                nimm = max(nimm - 1,1)
                
            #Infected Cell Removal
            if (i == 6):
                ninf = ninf - 1
                Picked_virus = v_in_cells.pop(random.randint(0,ninf))

            #Virus Removal
            if ( i == 7):
                nvir = nvir - 1
                Picked_virus = v_out_cells.pop(random.randint(0,nvir))
            #writeout
            if time >= tout:
                    f.write(','.join([str(time),str(ncell),str(ninf),str(nvir),str(nimm)])+'\n')
                 #   print(','.join([str(time),str(ncell),str(ninf),str(nvir),str(nimm)]))
                    iout = iout + 1
                    tout = tout + dtime
                    if iout == 10:
                        iout = 1
                        if (dtime < 1.0E-3):
                            dtime = dtime *30.0
                    if cell_burst:
                        cell_burst=False
                        popul = {}
                        for v in v_out_cells:
                            if v in popul.keys():
                                popul[v] = popul[v] + 1
                            else:
                                popul[v] = 1
                        l1 = list(popul.items())
                        l1.sort(key=lambda x: x[0],reverse=True)
                        g.write(str(time)+','+','.join([str(l[0])+'-'+str(l[1]) for l in l1])+'\n')
#        
        f.close()
        g.close()
#print('end')
