
public class MyMergeSort {
	
	private int[] array;
	private int[] tempMergeArr;
	private int length;
	
	public static void main( String a[]){
		
		int[] inputArray = {45,23,23,11,89,79,98,4,28,65,43,22,76,98,1,18};
		MyMergeSort mergeSort= new MyMergeSort();
		mergeSort.sort(inputArray);
        for(int i:inputArray){
            System.out.print(i);
            System.out.print(" ");
        }
	}
	

	public void sort(int inputArr[]){
		this.array=inputArr;
		this.length=inputArr.length;
		this.tempMergeArr= new int[length];
		doMergeSort(0,length-1);		
	}
	
	public void doMergeSort(int lowerIndex, int higherIndex){
		
		if (lowerIndex <higherIndex){
			int middle = lowerIndex + (higherIndex-lowerIndex)/2;
			doMergeSort(lowerIndex,middle);
			doMergeSort(middle+1,higherIndex);
			mergeParts(lowerIndex, middle, higherIndex);			
		}
	}
	
	public void mergeParts(int lowerIndex, int middle, int higherIndex){
		
		for(int i=lowerIndex;i<=higherIndex;i++){
			tempMergeArr[i]=array[i];
		}
		
		int i=lowerIndex;
		int j=middle+1;
		int k=lowerIndex;
		
		while(i<=middle && j<=higherIndex){
			if(tempMergeArr[i] <= tempMergeArr[j]){
				array[k]=tempMergeArr[i];
				i++;
			}else{
				array[k]=tempMergeArr[j];
				j++;
			}
			k++;
		}
		while(i<=middle){
			array[k]=tempMergeArr[i];
			k++;
			i++;
		}
		
	}
	
}
