import numpy as np
import matplotlib.pyplot as plt

def visualize(filename):
    """Visualize data from a single file"""
     # Import data
    data = np.loadtxt(fname=filename, delimiter=',')

    # Setup figure
    fig = plt.figure(figsize=(10.0, 3.0))
    fig.suptitle(filename)
    
    # Add subplots
    axes1 = fig.add_subplot(1, 3, 1) # (nrows, ncolumns, pos)
    axes2 = fig.add_subplot(1, 3, 2)
    axes3 = fig.add_subplot(1, 3, 3)

    # Add labels
    axes1.set_ylabel('mean')
    axes2.set_ylabel('max')
    axes3.set_ylabel('min')

    # Plot data
    axes1.plot(np.mean(data, axis=0))
    axes2.plot(np.max(data, axis=0))
    axes3.plot(np.min(data, axis=0))

    plt.savefig(f'inflammation{index}.png')
    plt.show()

def detect_problems(filename):
    """Detect problems in the data"""
    data = np.loadtxt(fname=filename, delimiter=',')
    
    max_inflammation = np.max(data, axis=0)
    min_inflammation = np.min(data, axis=0)
    
    if (max_inflammation[0] == 0) and (max_inflammation[20] == 20):
        print('Suspicious looking maxima')
    elif np.sum(min_inflammation) == 0:
        print('Minima add up to zero')
    else:
        print('Data looks ok')