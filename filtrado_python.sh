#!/usr/bin/env python
#
# Este script ha sido modificado para el tfg de uno encontrado en la web.
# El script original se puede encontrar en el siguiente foro de ayuda:
# https://www.raspberrypi.org/forums/viewtopic.php?t=85601
#
# Creador: Hugo Chargois - 17 jan. 2010 - v.0.1
#
# Modificado y utilizado: Jorge Saucedo Pavón Enero 2018

import sys
import subprocess

interface = "wlp2s0"

def get_name(cell):
    if (matching_line(cell,"ESSID:") == None):
        return "**CampoVacio**"
    else:
        return matching_line(cell,"ESSID:")[1:-1]
    

def get_quality(cell):
    quality = matching_line(cell,"Quality=").split()[0].split('/')
    return str(int(round(float(quality[0]) / float(quality[1]) * 100))).rjust(3) + " %"

def get_channel(cell):
    return matching_line(cell,"Channel:")

def get_signal_level(cell):
   
    return matching_line(cell,"Quality=").split("Signal level=")[1]




def get_address(cell):
    return matching_line(cell,"Address: ")


rules={"Name":get_name,
       "Quality":get_quality,
       "Channel":get_channel,
       
       "Address":get_address,
       "Signal":get_signal_level
       }



def sort_cells(cells):
    sortby = "Quality"
    reverse = True
    cells.sort(None, lambda el:el[sortby], reverse)


columns=["Name","Address","Quality","Signal", "Channel"]


def matching_line(lines, keyword):
    """Returns the first matching line in a list of lines. See match()"""
    for line in lines:
        matching=match(line,keyword)
        if matching!=None:
            return matching
    return None

def match(line,keyword):
    """If the first part of line (modulo blanks) matches keyword,
    returns the end of that line. Otherwise returns None"""
    line=line.lstrip()
    length=len(keyword)
    if line[:length] == keyword:
        return line[length:]
    else:
        return None

def parse_cell(cell):
    """Applies the rules to the bunch of text describing a cell and returns the
    corresponding dictionary"""
    parsed_cell={}
    for key in rules:
        rule=rules[key]
        parsed_cell.update({key:rule(cell)})
    return parsed_cell

def print_table(table):
    widths=map(max,map(lambda l:map(len,l),zip(*table))) #functional magic

    justified_table = []
    for line in table:
        justified_line=[]
        for i,el in enumerate(line):
            justified_line.append(el.ljust(widths[i]+2))
        justified_table.append(justified_line)
    
    for line in justified_table:
        for el in line:
            print el,
        print

def print_cells(cells):
    table=[columns]
    for cell in cells:
        cell_properties=[]
        for column in columns:
            cell_properties.append(cell[column])
        table.append(cell_properties)
    print_table(table)



def main():
    """Pretty prints the output of iwlist scan into a table"""
    
    cells=[[]]
    parsed_cells=[]

    proc = subprocess.Popen(["sudo","iwlist", interface, "scanning"],stdout=subprocess.PIPE, universal_newlines=True)
    out, err = proc.communicate()

    for line in out.split("\n"):
        cell_line = match(line,"Cell ")
        if cell_line != None:
            cells.append([])
            line = cell_line[-27:]
        cells[-1].append(line.rstrip())

    cells=cells[1:]

    for cell in cells:
        parsed_cells.append(parse_cell(cell))

    sort_cells(parsed_cells)

    print_cells(parsed_cells)

main()
